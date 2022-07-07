
const express = require('express');
const mysql = require('mysql2');
const app = express();

var db = mysql.createConnection(
    {
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD ,
    host: process.env.DB_HOST,
    database: process.env.DB_DBNAME,
    port: process.env.DB_PORT
  }); 

  db.connect ((error)=>{
      if(error){
          console.log(error);
      }
      else{
          console.log("Connected To DB");
      }
  })

  module.exports = db;