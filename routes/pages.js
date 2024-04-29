const express = require('express');
const router = express.Router();

router.get("/", (req, res) => {
    res.render("home-page")
});

router.get("/home-page", (req, res) => {
    res.render("home-page")
});

router.get("/home", (req, res) => {
    res.render("home-page")
});

router.get("/user-log-in", (req, res) => {
    res.render("user-log-in")
});

router.get("/user-sign-up", (req, res) => {
    res.render("user-sign-up")
});

router.get("/guest-sign-up", (req, res) => {
    res.render("guest-sign-up")
});

router.get("/guest-log-in", (req, res) => {
    res.render("guest-log-in")
});

router.get("/reservations", (req, res) => {
    res.render("reservations")
});

router.get("/Contact", (req, res) => {
    res.render("host-module")
});

router.get("/wishlist", (req, res) => {
    res.render("wishlist")
});

router.get("/Guest-Module-1", (req, res) => {
    res.render("Guest-Module-1")
});

router.get("/Guest-Module-2", (req, res) => {
    res.render("Guest-Module-2")
});

module.exports = router;