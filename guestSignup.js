const mysql = require("mysql");

const db = mysql.createConnection({
    host: process.env.DATABASE_host,
    user: process.env.DATABASE_user,
    password: process.env.DATABASE_password,
    database: process.env.DATABASE

});
exports.register = (req, res) => {
    console.log(req.body);
    const { name, email, phone } = req.body;


    db.query('SELECT Email FROM projectdb.users WHERE Email=?', { email }, (err, result) => {
        if (err) {
            console.log(err);
        }
        if (result.length > 0) {
            return res.render('guest-sign-up', {
                message: 'Email already in use'
            });
        }
        db.query('INSERT INTO users SET ?', { FirstName: name, LastName: name, PhoneNumber: phone, Email: email, UserType: 'Guest', Passwords: phone }, (err, result) => {
            if (err) {
                console.log(err);
            } else {
                console.log(result)
                return res.render('guest-sign-up', {
                    message: 'guest registered'
                });
            }
        })
    });
}