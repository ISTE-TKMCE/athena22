const express = require('express');
const app = express();
const router = express.Router();  
const authcntrl = require('../controllers/authcontrol.js');

router.get('/verifymail', (req,res)=>{
    // if(req.session.name){
       // console.log("hey", req.session.name);
        res.render('verifymail');
    //}
    //else {
     //   res.send("please log in")
    //}
})
router.post('/verifyotp', authcntrl.verifyregisterotp );
router.post('/userregister', authcntrl.register );
router.post('/login', authcntrl.login );

module.exports = router;