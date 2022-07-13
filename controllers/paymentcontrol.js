const express = require("express");
const app = express();
var db = require("../models/dbconnect");
const path = require("path");
var dash = require("../src/server");
var Razorpay = require("razorpay");
var bodyParser = require("body-parser");
const session = require("express-session");
var request = require("request");

let instance = new Razorpay({
  key_id: process.env.RAZORPAY_KEY, // your `KEY_ID`
  key_secret: process.env.RAZORPAY_SIGNATURE, // your `KEY_SECRET`
});

module.exports.amountgenerator = (req, res) => {
  db.query("SELECT * FROM events ", async (error, results) => {
    if (results.length === 0) {
      return res.send("EVENTS ERROR : Contact Administrator");
    } else {
      discammount = 100;
      enteredCCode1 = req.session.regdetails.couponcode1;
      enteredCCode2 = req.session.regdetails.couponcode2;
      CAcodes = await getCACodes(enteredCCode1, enteredCCode2);
      CouponCode = [{ name: "EARLYBIRD", amount: 200 }];
      CouponCode.push(...CAcodes);
      event1 = req.session.regdetails.event1;
      event2 = req.session.regdetails.event2;
      event3 = req.session.regdetails.event3;
      IsteReg = req.session.regdetails.ISTEregemail;
      pcbreq = req.session.regdetails.needpcbkit;
      verifiedCCode = [];

      razorpayfee1 = 0;
      razorpayfee2 = 0;
      razorpayfee3 = 0;
      registeredevents = [];
      checkevents = req.session.eventstocheck;
      registrationamount = 0;

      results.forEach((event) => {
        if (event.name == event1) {
          eventname = event.name;
          eventmoney = event.eventamount;
          eventcategory = event.categeory;
          razorpayfee1 = 0.02 * event.eventamount;
          registrationamount += razorpayfee1;
          registrationamount += event.eventamount;
          registeredevents.push({ eventname, eventmoney, eventcategory });
        }
        if (event.name == event2) {
          eventname = event.name;
          eventmoney = event.eventamount;
          eventcategory = event.categeory;
          razorpayfee2 = 0.02 * event.eventamount;
          registrationamount += razorpayfee2;
          registrationamount += event.eventamount;
          registeredevents.push({ eventname, eventmoney, eventcategory });
        }
        if (event.name == event3) {
          eventname = event.name;
          eventmoney = event.eventamount;
          eventcategory = event.categeory;
          razorpayfee3 = 0.02 * event.eventamount;
          registrationamount += razorpayfee3;
          registrationamount += event.eventamount;
          registeredevents.push({ eventname, eventmoney, eventcategory });
        }
      });

      check = true;
      if (enteredCCode1 === "" && enteredCCode2 === "") {
      } else {
        if (
          enteredCCode1 === enteredCCode2 ||
          enteredCCode1.toUpperCase() === enteredCCode2.toUpperCase()
        ) {
          CouponCode.forEach((coupon) => {
            if (coupon.name === enteredCCode1) {
              registrationamount -= coupon.amount;
              verifiedCCode.push(coupon.name);
            }
          });
        } else if (enteredCCode1 != enteredCCode2) {
          CouponCode.forEach((coupon) => {
            if (
              coupon.name === enteredCCode1 ||
              coupon.name === enteredCCode2
            ) {
              registrationamount -= coupon.amount;
              console.log(registrationamount);
              verifiedCCode.push(coupon.name);
            }
          });
        }
      }
      ///Check for ISTE Reg Number Validity
      if (IsteReg != "" && check) {
        registrationamount = await istediscount(
          IsteReg,
          registrationamount,
          registeredevents
        );
      }

      //////********************** */

      req.session.registrationamount = registrationamount;

      message = "";
      if (verifiedCCode[0] != undefined) {
        message += "Successfully applied coupons : " + verifiedCCode[0];
        if (verifiedCCode[1] != undefined) {
          message += " and " + verifiedCCode[1] + " !";
        } else {
          message += " !";
        }
      }
      razorpayfee = razorpayfee1 + razorpayfee2 + razorpayfee3;
      res.render("payment", {
        events: registeredevents,
        registrationamount: registrationamount,
        message: message,
        fee: razorpayfee,
      });
    }
    if (error) {
      console.log(error);
    }
  });

  //}) db querry
};

/**************** ORDER ID ****************/
async function orderIdcreator() {
  // return the response
  var params = {
    amount: registrationamount * 100,
    amount: registrationamount * 100,
    amount: registrationamount * 100,
    currency: "INR",
    receipt: "athena001",
    payment_capture: "1",
  };
  return await createOrderId(params);
}

function createOrderId(params) {
  return new Promise((resolve, reject) => {
    instance.orders
      .create(params)
      .then((data) => {
        orderid = data;

        resolve(orderid);
      })
      .catch((error) => {
        console.log(error);
        reject(error);
      });
  });
}

/**************** ORDER ID ****************/

/**************** PAYOUT ****************/

module.exports.paymentcontrol = async (req, res) => {
  orderid = await orderIdcreator();

  orderdet = [
    { id: orderid.id, key: process.env.RAZORPAY_KEY, name: req.session.name },
  ];
  req.session.orderid = orderid;

  res.json(orderdet);
};

/**************** PAYOUT ****************/
/**************** PAYOUT VERIFICATION ****************/

module.exports.paymentaftercontrol = async (req, res) => {
  orderid = req.session.orderid.id;
  paymentid = req.body.razorpay_payment_id;
  const {
    numevents,
    event1,
    event2,
    event3,
    needpcbkit,
    isISTE,
    ISTEregemail,
    couponcode1,
    couponcode2,
  } = req.session.regdetails;
  const crypto = require("crypto");
  const hmac = crypto.createHmac("sha256", process.env.RAZORPAY_SIGNATURE);

  hmac.update(orderid + "|" + paymentid);
  let expectedSignature = hmac.digest("hex");
  var response = { status: "failure" };
  paidamount = req.session.orderid.amount / 100;
  paidtime = new Date().toLocaleString();
  if (expectedSignature === req.body.razorpay_signature) {
    db.query(
      "INSERT INTO paidregistration SET ?",
      {
        name: req.session.name,
        email: req.session.email,
        eventName1: event1,
        eventName2: event2,
        eventName3: event3,
        needpcbkit: needpcbkit,
        isISTE: isISTE,
        ISTEregno: ISTEregemail,
        orderid: orderid,
        paymentid: paymentid,
        isPaid: "1",
        couponcode1: couponcode1,
        couponcode2: couponcode2,
        paid_amount: paidamount,
        phNo: req.session.contact,
        date_time: paidtime,
        verify: "0",
        mail: "0",
      },
      (error, reusult) => {
        //db.query("INSERT INTO paidregistration SET ? WHERE email = ? AND orderid = ? ",[{orderid: orderid, paymentid: paymentid, isPaid: "1"},req.session.email, "NP"], (error,reusult)=>{
        if (error) {
          console.log(error);
        } else {
          if (couponcode1 && couponcode1.split("_")[0] == "CA") {
            updateCAUsed(couponcode1).then((newCode) => {
              console.log("updated");
            });
          }
          if (couponcode2 && couponcode2.split("_")[0] == "CA") {
            updateCAUsed(couponcode2).then((newCode) => {
              console.log("updated");
            });
          }
        }
      }
    );
    res.redirect("/thankyou");
  } else {
    db.query(
      "INSERT INTO paidfailedverifireg SET ?",
      {
        name: req.session.name,
        email: req.session.email,
        eventName1: event1,
        eventName2: event2,
        eventName3: event3,
        needpcbkit: needpcbkit,
        isISTE: isISTE,
        ISTEregno: ISTEregemail,
        orderid: orderid,
        paymentid: paymentid,
        isPaid: "1",
        couponcode1: couponcode1,
        couponcode2: couponcode2,
        paid_amount: paidamount,
        phNo: req.session.contact,
        date_time: paidtime,
      },
      (error, reusult) => {
        //db.query("INSERT INTO paidregistration SET ? WHERE email = ? AND orderid = ? ",[{orderid: orderid, paymentid: paymentid, isPaid: "1"},req.session.email, "NP"], (error,reusult)=>{
        if (error) {
          console.log(error);
        } else {
          //console.log(reusult);
          res.render("payerror", {
            errormessage:
              "Payment Verification Failed. Contact Event Coordinator to confirm your payment.",
          });
        }
      }
    );
  }
};

/**************** PAYOUT VERIFICATION ****************/

/*******ISTE DECREAMENT */

async function istediscount() {
  console.log(registeredevents);
  console.log("hey");
  // return the response
  return await creatediscount(IsteReg, registrationamount, registeredevents);
}

function creatediscount(IsteReg, registrationamount, registeredevents) {
  return new Promise((resolve, reject) => {
    try {
      db.query(
        "SELECT * FROM `iste_member` WHERE email = ?",
        [IsteReg],
        async (err, results) => {
          console.log(registeredevents);
          if (results.length === 0) {
            console.log(registrationamount);
            resolve(registrationamount);
          }
          if (registeredevents[0].eventcategory === "event") {
            if (
              registeredevents[0]?.eventname == "You're Hired!" ||
              registeredevents[1]?.eventname == "You're Hired!" ||
              registeredevents[2]?.eventname == "You're Hired!"
            ) {
              registrationamount -= 50;
              verifiedCCode.push("ISTE-MEMBER");
            }
            if (
              registeredevents[0]?.eventname == "Extrude" ||
              registeredevents[1]?.eventname == "Extrude" ||
              registeredevents[2]?.eventname == "Extrude"
            ) {
              registrationamount -= 50;
              verifiedCCode.push("ISTE-MEMBER");
            }
            resolve(registrationamount);
          } else {
            registrationamount -= 100;
            verifiedCCode.push("ISTE-MEMBER");

            resolve(registrationamount);
          }
          if (err) {
            console.log(err);
            res.send("Error" + err);
          }
        }
      );
    } catch (err) {
      console.log(err);
    }
  });
}

/******************************GET PAID AMOUNT ********/

async function getamountpaid(paymentid) {
  // return the response
  return await getamountetails(paymentid);
}

function getamountetails(paymentid) {
  return new Promise((resolve, reject) => {
    return new Promise((resolve, reject) => {
      try {
        request(
          `https://${process.env.RAZORPAY_KEY}:${process.env.RAZORPAY_SIGNATURE}@api.razorpay.com/v1/payments/${paymentid}`,
          function (error, response, paydets) {
            resolve(paydets);
            paidamount = paydets.amount;
          }
        );
      } catch (err) {
        console.log(err);
      }
    });
  });
}

function getCACodes(enteredCCode1, enteredCCode2) {
  return new Promise((resolve, reject) => {
    try {
      db.query("SELECT * FROM `ca_codes`", async (err, codes) => {
        if (codes.length === 0) {
          console.log("No ca codes");
          resolve(codes);
        } else {
          checkEachCode(codes).then((Cacodes) => {
            resolve(Cacodes);
          });
        }
        if (err) {
          console.log(err);
          res.send("Error" + err);
        }
      });
    } catch (err) {
      console.log(err);
    }
  });
}

function checkEachCode(codes) {
  return new Promise((resolve, reject) => {
    Cacodes = [];
    codes.forEach(async (code) => {
      if (parseInt(code.used) < 10000) {
        if (code.code === enteredCCode1 || code.code === enteredCCode2) {
          codeUsed = parseInt(code.used) + 1;
          newCode = { name: code.code, amount: 100 };
          Cacodes.push(newCode);
        }
      }
    });
    resolve(Cacodes);
  });
}
function updateCAUsed(code) {
  return new Promise((resolve, reject) => {
    db.query(
      "UPDATE `ca_codes` SET used = used + 1 where code = ?",
      [code],
      (err, result) => {
        if (err) {
          console.log(err);
        } else {
          resolve("Success");
        }
      }
    );
  });
}
