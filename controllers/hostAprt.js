const mysql = require("mysql");

const db = mysql.createConnection({
    host: process.env.DATABASE_host,
    user: process.env.DATABASE_user,
    password: process.env.DATABASE_password,
    database: process.env.DATABASE

});
exports.register = (req, res) => {
    console.log(req.body);
    const propertyType = req.body.select;
    const location = req.body.text_1;
    const guestsAllowed = req.body.text_2;
    const noOfbedrooms = req.body.text_3;
    const noOfbathrooms = req.body.text_4;
    const email = req.body.email;
    const price = req.body.price;
    const user = db.query('SELECT UserId FROM users WHERE Email=?', [email], (err, results) => {
        if (err) {
            console.log(err);
        } else {
            console.log(results)
        }

    })
    console.log(user);



    db.query('INSERT INTO property SET ?', { UserId: user, PropertyType: propertyType, NoOfRooms: noOfbedrooms, NumberOfBathrooms: noOfbathrooms, TotalGuest: guestsAllowed, PricePerNight: price }, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            console.log(result)
            return res.render('host-module', {
                message: 'property registered'
            });
        }
    })
}