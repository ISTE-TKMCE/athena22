
const bcrypt = require('bcrypt');
const express = require('express');
const app = express();
var db = require('../models/dbconnect');
var path = require('path');
app.use(express.static('public'));


    module.exports.login = (req,res) =>{
 
        
    try{
        const {email, password} = req.body;
        req.session.email = email;
        
        if(!email || !password){
            
           return res.status(401).render("adminlogin",{
                    message: "Email Or Password Incorrect"
                });
        }
        db.query("SELECT * FROM admin where email = ?", [email], async(error, results)=>{
            if(results.length === 0){
                return res.status(401).render("adminlogin",{
                    message: "Email Or Password Incorrect"
                });
            }
            // else{
            //     username = results[0].name;
            //     admintype = results[0].category;             
            // }
            else if(error){
                console.log(error)
            }
            else if( !results || !(await (bcrypt.compare(password, results[0].password))) ){

                return res.status(401).render("adminlogin",{
                    message: "Email Or Password Incorrect"
                });
            }
            else{
                
                req.session.name=  results[0].name;
                req.session.admintype = results[0].category;
                req.session.organizerevent = results[0].organizerevent;
                req.session.isclick = results[0].isclick
                console.log(req.session.organizerevent)
                res.redirect('/admindashboard');
                
            }
        })
        
    }
    catch(error){
        console.log(error);

    }}

    module.exports.adminroute = (req,res) =>{
        console.log(req.session.name);
 
        admintype = req.session.admintype;

        if (admintype == "organizer"){
            organizerevent = req.session.organizerevent;
            res.render('adminorgdash',{name: req.session.name});
        }
        else if (admintype == "superadmin"){
            res.render('admindashmain');  
        }
        else if (admintype == "volunteer"){
            res.render('orgdashmain');  
        }
        else if (admintype == "finhead"){
            res.render('finhead');  
        }
        else if (admintype == "registration"){
            res.render('regadmin', {name: req.session.name, user : "Registration"});  
        }
        else{
            return res.status(401).render("adminlogin",{
                message: "Unauthorize Access. You have been reported"
            });
    }

        try{
           //console.log('try keri');
            
        }
        catch(error){
            console.log(error);
    
        }
      
    }


    module.exports.getregistrations = (req,res) =>{
        db.query('SELECT * FROM paidregistration ORDER BY `name` ASC', (err,result) => {
            if(err){
                console.log(err);
            }
            else{
                console.log(result);
                res.render('regadmin/regdetailsadmin', {user: "Registration", head: "Paid Registration", paidregistrations: result, btntext: "PAID", btnclass:"success"})
            }
        })
    }

    module.exports.getorgregistrations = (req,res) =>{
        eventtname = req.session.organizerevent;
        typeof(eventtname)
        btndets= [];
        btn2dets= [];
        if(eventtname == "QUIZZARDS OF THE OZ" || eventtname == "FEMMES EN TECH" ){

            db.query('SELECT * FROM quiz WHERE eventName1 = ?',[eventtname], async(err,result) => {
                if(err){
                    console.log(err);
                }
                else{
                    /* result.forEach(event => {
                        if(event.verify != 1){
                            btclass = "danger" ;
                            bttext = "Verify"  ;

                            btndets.push({class: btclass,text: bttext});
                        }
                        else{
                            bttext = "Verified";
                            btclass =  success;
                            btndets.push({class: btclass,text: bttext});
                        }
                    })
                    console.log(btn2dets);
                    console.log(btndets); */
                   //console.log(result);
                    res.render('organizer/orgdetailsadmin', {user: "Organizer", head: "Registrations", registrations: result, btnclass: "success", btntext: "PAID", btn2class: "warning", btn2text: "Registered"})
                }
            })

        }
        else{
        db.query('SELECT * FROM paidregistration WHERE eventName1 = ?',[eventtname], (err,result) => {
            if(err){
                console.log(err);
            }
            else{
                regbutton ="";
                if (req.session.isclick == 0){
                    regbutton = "true";
                }
                result.forEach(event => {
                    if(event.verify != 1){
                        btclass = "danger" ;
                        bttext = "VERIFY"  ;

                        btndets.push({class: btclass,text: bttext});
                    }
                    else{
                        btclass = "success";
                        bttext =  "VERIFIED";
                        btndets.push({class: btclass,text: bttext});
                    }
                    if(event.mail != 1){
                        btclass = "danger" ;
                        bttext = "ADD TO MAIL"  ;

                        btn2dets.push({class: btclass,text: bttext});
                    }
                    else{
                        btclass = "success";
                        bttext =  "MAIL ADDED";
                        btn2dets.push({class: btclass,text: bttext});
                    }
                })
                console.log(btn2dets);
                console.log(btndets);
                //console.log(result);
                res.render('organizer/orgdetailsadmin', {user: "Organizer", head: "Registrations", registrations: result, btndets:JSON.stringify(btndets),btn2dets:JSON.stringify(btn2dets), regbutton:regbutton})
            }
        })
    }
        
    }
    module.exports.getallregistrations = (req,res) =>{
        db.query('SELECT DISTINCTROW `name`,`email`, `eventName1`,`phNo`  FROM `registration` r WHERE NOT EXISTS (SELECT `email` FROM `paidregistration` p WHERE r.`email` = p.`email`) ORDER BY `name` ASC', (err,results) => {
             if(err){
                 console.log(err);
             }
             else{
                 console.log(results);
                res.render('regadmin/regdetailsadmin', {user: "Registration", head: "Unpaid Registration", paidregistrations: results, btntext: "UNPAID", btnclass:"danger"})
             }
        })
         
        
    }

    module.exports.getfinregistrations = (req,res) =>{
        db.query('SELECT * FROM paidregistration', (err,result) => {
            if(err){
                console.log(err);
            }
            else{
                console.log(result);
                var totalamount = 0;
                result.forEach(reg=>{
                    //console.log(reg.paid_amount);
                    if(reg.paid_amount != null){
                        amount = parseInt(reg.paid_amount);
                        totalamount+= amount ;
                        console.log(amount);
                        console.log(totalamount);
                    }
                });
                res.render('finance/findetailsadmin', {user: "Finance Head", head: "Registrations", registrations: result, btntext: "PAID", btnclass:"success", totalamount:totalamount})
            }
        })
    }
        
