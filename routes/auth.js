const express = require('express');
const router = express.Router();
const userSignupController = require('../controllers/userSignup');
const guestSignupController = require('../controllers/guestSignup');
const hostAprtController = require('../controllers/guestSignup');
router.post('/user-sign-up', userSignupController.register);
router.post('/guest-sign-up', guestSignupController.register);
router.post('/host-module', hostAprtController.register);



module.exports = router;