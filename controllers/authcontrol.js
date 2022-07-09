
const bcrypt = require('bcrypt');
const express = require('express');
const app = express();
var db = require('../models/dbconnect');
const path = require("path");
var dash = require('../src/server');





module.exports.register = (req,res) =>{
  
    const {name,email,phNo, College, password,cnfrmpassword, branch, yearofStudy} = req.body;
    phoneNum = parseInt(phNo);
    db.query("SELECT * FROM users where email = ?", [email], async (error,results) =>{
    if(error){
        console.log(error);
    }
    if (results.length >0){
        return res.render('signup', {
            message: 'Email Already Exists. Please Log In.'
        });
    }
    else if (password !== cnfrmpassword){
        return res.render('signup', {
            message: 'Entered passwords do not match. Try again'
        });
    }

    let hashedPass = await bcrypt.hash(password,8);
    db.query("INSERT INTO users SET ?", {name : name, email : email, phNo: phoneNum, college: College, password: hashedPass, studyYear: yearofStudy, studyBranch: branch },(error,reusult)=>{
        if(error){
            console.log(error)
        }
        else {
            req.session.email = email;
            req.session.name = name;
            req.session.contact = phNo;
            res.redirect('/auth/verifymail');
            
        }

    });

    })}

    module.exports.verifyregisterotp = (req,res) =>{
        return new Promise((resolve, reject)=> {
            if(req.body.otp == req.session.genotp){
                console.log('true otp');
                db.query("UPDATE users SET ? WHERE email = ?", [{isVerified :'1'}, req.session.email],(error,reusult)=>{
                    if(error){
                        console.log(error)
                    }
                    else {
                        req.session.verifieduser = "1";
                        res.redirect('/userdashboard');
                        
                    }
                });
            }
            else{
                console.log('false otp');
                res.render('verifymail', {
                    message: 'Wrong OTP. Try Again'
                });
            }   
        });
    }


    module.exports.login = (req,res) =>{
 
        
    try{
        const {email, password} = req.body;
        req.session.email = email;
        
        if(!email || !password){
            return res.status(400).render("login",{
                message: "No fields can be empty"
            });
        }
        db.query("SELECT * FROM users where email = ?", [email], async(error, results)=>{

            
    
            if(!results){
                return res.status(401).render("login",{
                    message: "Email Or Password Incorrect"
                });
            }
            if(error){
                console.log(error)
            }

            else if( !results || !(await (bcrypt.compare(password, results[0].password))) ){

                return res.status(401).render("login",{
                    message: "Email Or Password Incorrect"
                });
            }
            else{
                
                req.session.name= results[0].name;
                req.session.contact = results[0].phNo;
                req.session.verifieduser = results[0].isVerified;
                if(results[0].isVerified == "1")
                res.redirect('/userdashboard');
                else
                res.redirect('/auth/verifymail')
                
            }
        })
        
    }
    catch(error){
        console.log(error);

    }
    


    }
