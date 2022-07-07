
const bcrypt = require('bcrypt');
const express = require('express');
const app = express();
var db = require('../models/dbconnect');
var path = require('path');
app.use(express.static('public'));


 module.exports.updatenumber = (req,res) =>{
                db.query('SELECT * FROM users', (err,newresult) => {
                    
                 newresult.forEach(user =>{
                     db.query("UPDATE paidregistration SET `phNo` = ? WHERE `email` = ?",[user.phNo, user.email], (err,result)=>{
                         if(err){
                             console.log(err)
                         }
                         else{
                            console.log("success");
                            
                         }
                     })
                   
                 })
                
        
            })
 }
