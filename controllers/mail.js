// const nodemailer = require('nodemailer');
// const mailGun = require('nodemailer-mailgun-transport');
const express = require('express');
const app = express();
var db = require('../models/dbconnect');
const mailgun = require("mailgun-js");
const mg = mailgun({apiKey: process.env.MAILGUN_NAME, domain: process.env.MAILGUN_HOST});
module.exports.otpmail =(email,otp,name) => {
    return new Promise((resolve, reject)=> {
        let data = {
            from: 'noreply@athena21.live',
            to: email,
            subject: 'Confirm OTP | Athena21',
            template: "athena",
            'h:X-Mailgun-Variables': JSON.stringify({name: name, otp: otp, email: email})
        };
        mg.messages().send(data, function (error, body) {
          if(error) {
              console.log(error);
            //   logger.error(error);
            reject(error);
        }else {
            console.log('Mail sent to', email);
            resolve('ES');
        }
      });
  });    
}


module.exports.workshopmail =(email,eventname) => {
    //console.log(email);
    const dict = {
        "APP DEVELOPMENT WORKSHOP" : "http://app.athena21.live/",
        "STAAD PRO WORKSHOP" : "http://staad.athena21.live/",
        "CATIA WORKSHOP" : "http://catia.athena21.live/",
        "ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP" : "http://pcb.athena21.live/"
    }
    //console.log(eventname);
    link =  dict[`${eventname}`];
    //console.log(link)
    return new Promise((resolve, reject)=> {
                let data = {
                    from: 'admin@athena21.tech',
                    to: email,
                    subject: 'Join Link | Athena21',
                    template: "Post",
                    'h:X-Mailgun-Variables': JSON.stringify({eventname:eventname, link: link, email: email})
                };
                mg.messages().send(data, function (error, body) {
                  if(error) {
                      console.log(error);
                    //   logger.error(error);
                    reject(error);
                }else {
                    console.log('Mail sent to', email);
                    db.query("UPDATE admin SET ? WHERE email = ? ", [{isclick: "1"}, email], (err, result) =>{
                        if(err){
                            console.log(err);
                        }
                        else{
                            resolve('ES');
                        }
                    })
                   
                }
              });
          });    
}

// myfunc();



// const transporter = nodemailer.createTransport(mailGun(auth));

// const mailOptions = {
//     from: 'web@istetkmce.in',
//     to: 'sujithvi08@gmail.com',
//     subject: 'Test',
//     text: 'Hello'
// };

// transporter.sendMail(mailOptions, function(err, data){
//     if(err){
//         console.log('Error Occurs ', err);
//     } else {
//         console.log('Message sent ');
//     }
// })
