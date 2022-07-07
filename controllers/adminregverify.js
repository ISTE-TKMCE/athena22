const express = require('express');
const app = express();
var db = require('../models/dbconnect');


module.exports.verifyreg = (req,res) =>{
    id = req.body.id;
    console.log( id)
     db.query('UPDATE paidregistration SET ? WHERE id = ?',[{verify:1},id], (err,result) => {
         if(err){
           console.log(err);
         }
        else{
            res.send({class:"success",text:"VERIFIED"});
        }
    })

    
}


module.exports.verifymail = (req,res) =>{
    id = req.body.id;
    console.log( id)
     db.query('UPDATE paidregistration SET ? WHERE id = ?',[{mail:1},id], (err,result) => {
         if(err){
           console.log(err);
           
         }
        else{
            console.log(result)
            res.send({class:"success",text:"MAIL ADDED"});
        }
    })

    
}