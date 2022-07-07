const express = require ('express');
const app = express();
const router = express.Router();

const adminauthcntrl = require('../controllers/adminauthcontrol.js');
const adminregverify = require('../controllers/adminregverify.js');
const redirect = require('../controllers/redirect');


router.get('/',redirect.RedirectadminLogin, adminauthcntrl.adminroute);
router.get('/registrations',redirect.RedirectadminLogin, adminauthcntrl.getfinregistrations);
router.get('/paidregistrations',redirect.RedirectadminLogin, adminauthcntrl.getregistrations);
router.get('/unpaidregistrations',redirect.RedirectadminLogin, adminauthcntrl.getallregistrations);
router.get('/eventregistrations',redirect.RedirectadminLogin, adminauthcntrl.getorgregistrations);
const dbupdate = require('../controllers/dbupdate.js');


router.get('/', adminauthcntrl.adminroute);
router.get('/phupdate', dbupdate.updatenumber);


router.post('/verifyreg',redirect.RedirectadminLogin, adminregverify.verifyreg);
router.post('/verifymail',redirect.RedirectadminLogin, adminregverify.verifymail);

module.exports = router;
