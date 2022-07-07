const express = require ('express');
const app = express();
const router = express.Router();
const userdashRoute = require('./userdashboard');
const admindashRoute = require('./admindashboard');
const eventsRoute = require('./events');
const redirect = require('../controllers/redirect');
var path = require('path');



router.get('/', (req,res)=>{
    res.sendFile(path.resolve('views/index.html'));
})

router.get('/home', (req,res)=>{
    res.sendFile(path.resolve('views/home.html'));
});

router.get('/terms', (req,res)=>{
    res.sendFile(path.resolve('views/terms.html'));
});

router.get('/privacy', (req,res)=>{
    res.sendFile(path.resolve('views/privacy.html'));
});
router.get('/refund', (req,res)=>{
    res.sendFile(path.resolve('views/refund.html'));
});


router.use('/events', eventsRoute);

router.get('/login', redirect.RedirectHome, (req,res)=>{
    res.render('login');
})
router.get('/signup', redirect.RedirectHome, (req,res)=>{
    res.render('signup');
})
router.get('/admin/login', redirect.RedirectadminHome, (req,res)=>{
    res.render('adminlogin');
})
router.get('/502.html' ,(req,res)=>{
   res.redirect('/home');
})
router.get('/thankyou' ,(req,res)=>{
    res.sendFile(path.resolve('views/thankyou.html')); })

router.get('/google8bf102bffa1afc17.html', (req,res)=>{
    res.sendFile(path.resolve('views/googled23d6d9f8b681595.html'));
})
router.get('/schedule', (req,res)=>{
    res.sendFile(path.resolve('public/img/schedule.jpeg'));
})
router.get('/logout', redirect.RedirectLogin, (req,res) => {
    req.session.destroy(err => {
        if(err){
            return res.redirect("/userdashboard");
        }
    })
    res.redirect("/login");
})
router.get('/admin/logout', redirect.RedirectadminLogin, (req,res) => {
    req.session.destroy(err => {
        if(err){
            return res.redirect("/admindashboard");
        }
    })
    res.redirect("/admin/login");
})

router.get('/a10', (req,res)=>{
    res.redirect("/home");
})


router.use('/eventsubmit',redirect.RedirectLogin,redirect.RedirectVerify, eventsRoute);
router.use('/userdashboard',userdashRoute);
router.use('/admindashboard',admindashRoute);

module.exports = router;
