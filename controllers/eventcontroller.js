const bcrypt = require("bcrypt");
const express = require("express");
const app = express();
var db = require("../models/dbconnect");
const path = require("path");
var dash = require("../src/server");

module.exports.registerevent = (req, res) => {
  const {
    numevents,
    event1,
    event2,
    event3,
    needpcbkit,
    isISTE,
    ISTEregno,
    couponcode1,
    couponcode2,
  } = req.body;
  req.session.regdetails = req.body;
  console.log(req.body);
  regtime = new Date().toLocaleString();

  db.query(
    "INSERT INTO registration SET ?",
    {
      name: req.session.name,
      email: req.session.email,
      eventName1: event1,
      eventName2: event2,
      eventName3: event3,
      needpcbkit: needpcbkit,
      isISTE: isISTE,
      ISTEregno: ISTEregno,
      couponcode1: couponcode1,
      couponcode2: couponcode2,
      phNo: req.session.contact,
      date_time: regtime,
    },
    (error, reusult) => {
      if (error) {
        console.log(error);
      } else {
        res.redirect("/userdashboard/eventcheckout");
      }
    }
  );
};

module.exports.registerfandevent = (req, res) => {
  const { numevents, event1, event2, videolink, instaid } = req.body;
  req.session.regdetails = req.body;
  console.log(req.body);
  regtime = new Date().toLocaleString();

  db.query(
    "INSERT INTO fnd SET ?",
    {
      name: req.session.name,
      email: req.session.email,
      phNo: req.session.contact,
      video_link: videolink,
      insta_id: instaid,
      date_time: regtime,
    },
    (error, reusult) => {
      if (error) {
        console.log(error);
      } else {
        res.redirect("/userdashboard/eventcheckout");
      }
    }
  );
};
module.exports.registerquizevent = (req, res) => {
  const { numevents, event1, event2, event3 } = req.body;
  req.session.regdetails = req.body;
  console.log(req.body);
  regtime = new Date().toLocaleString();

  db.query(
    "INSERT INTO quiz SET ?",
    {
      name: req.session.name,
      email: req.session.email,
      eventName1: event1,
      eventName2: event2,
      eventName3: event3,
      phNo: req.session.contact,
      date_time: regtime,
    },
    (error, reusult) => {
      if (error) {
        console.log(error);
      } else {
        res.redirect("/thankyou");
      }
    }
  );
};

module.exports.getevents = (req, res) => {
  db.query("SELECT * FROM events", (err, results) => {
    if (err) console.log(err);
    else {
      eventc1 = [];
      eventc2 = [];
      eventc3 = [];
      eventc4 = [];
      eventc5 = [];
      eventc6 = [];
      for (i = 0; i < 3; i++) {
        eventc1.push(results[i]);
      }
      for (i = 3; i < 4; i++) {
        eventc2.push(results[i]);
      }
      for (i = 4; i < 10; i++) {             // ljflafjl
        eventc3.push(results[i]);
      }
      for (i = 7; i < 10; i++) {
        eventc4.push(results[i]);
      }
      for (i = 10; i < 13; i++) {
        eventc5.push(results[i]);
      }
      for (i = 15; i < 16; i++) {
        eventc6.push(results[i]);
      }
      res.render("events", {
        eventc1: eventc1,
        eventc2: eventc2,
        eventc3: eventc3,
        eventc4: eventc4,
        eventc5: eventc5,
        eventc6: eventc6,
      });
    }
  });
};

// EACH EVENT PAGE RENDERING
module.exports.eachevent = (req, res) => {

  switch(req.params.id){
    case "aws": id = 1 ; break;
    case "impromptu": id = 6 ; break;
    case "unity": id = 2 ; break;
    default : id = req.params.id;
  }
  // if (req.params.id === "aws") {
  //   id = 1;
  // } else {
  //   id = req.params.id;
  // }
  db.query(
    "SELECT * FROM events WHERE id = ?",
    [id],
    (err, results) => {
      if (err) console.log(err);
      else {
        console.log(results[0].id > 4 );
        if (results[0].categeory == 'event') {
          res.render("eachevent", {
            events: results,
            redirecturl: "/userdashboard/registerevent",
          });
        } else {
          res.render("eachevent", {
            events: results,
            redirecturl: "/userdashboard/registerworkshop",
          });
        }
      }
    }
  );
};
