const express = require("express");
const app = express();
const mysql = require("mysql");
const dotenv = require("dotenv");
const path = require("path");
dotenv.config({ path: './.env' });
const db = mysql.createConnection({
    host: process.env.DATABASE_host,
    user: process.env.DATABASE_user,
    password: process.env.DATABASE_password,
    database: process.env.DATABASE

});
db.connect((err) => {
    if (err) {
        console.log(err)
    } else {
        console.log(" Mysql connected")
    }
});
app.set('view engine', 'hbs');
const publicDirectory = path.join(__dirname, './public');
const imagesDir = path.join(__dirname, './images');
app.use(express.static(imagesDir));
app.use(express.static(publicDirectory));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
console.log(__dirname);

// Define routes

app.use('/', require('./routes/pages'));
app.use('/auth', require('./routes/auth'));

app.listen(3001, () => {
    console.log(" Server successful ")
});