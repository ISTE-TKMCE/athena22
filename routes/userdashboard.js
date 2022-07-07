const express = require ('express');
const app = express();
const router = express.Router();
const redirect = require('../controllers/redirect');
const paymentcontroller = require('../controllers/paymentcontrol.js');
const dashcontroller = require('../controllers/userdashcontrol.js');

router.get('/', redirect.RedirectLogin,redirect.RedirectVerify, dashcontroller.loadevents);


router.get('/registerworkshop', redirect.RedirectLogin,redirect.RedirectVerify, dashcontroller.loadeventsatreg);
router.get('/registerevent', redirect.RedirectLogin,redirect.RedirectVerify, dashcontroller.loadeventsateventreg);



router.get('/eventcheckout', redirect.RedirectLogin,redirect.RedirectVerify, paymentcontroller.amountgenerator);
router.post('/eventpayment', redirect.RedirectLogin,redirect.RedirectVerify, paymentcontroller.paymentcontrol);
router.post('/eventafterpayment', redirect.RedirectLogin,redirect.RedirectVerify, paymentcontroller.paymentaftercontrol);
router.get('/unravel/form', redirect.RedirectLogin,redirect.RedirectVerify, dashcontroller.ravelform);
router.post('/unravel/submit', redirect.RedirectLogin,redirect.RedirectVerify, dashcontroller.ravelformsubmit);

//router.get('/', userauthcntrl.userroute);


module.exports = router;
