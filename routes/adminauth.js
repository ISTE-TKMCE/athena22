const express = require('express');
const app = express();
const router = express.Router();  
const adminauthcntrl = require('../controllers/adminauthcontrol.js');
const redirect = require('../controllers/redirect');


router.post('/login',redirect.RedirectadminHome, adminauthcntrl.login );


module.exports = router;