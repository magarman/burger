// Set up MySQL connection.
var mysql = require("mysql");

//Create the MySQL connection object
var connection = mysql.createConnection({
    //DB is local on localhost
    host: "localhost",
    port: 3306,
    user: "root",
    password: env.process.PASSWORD,
    database: "burgers_db"
});

// Make connection to MySQL
connection.connect(function(err) {
    if (err) {
    console.error("error connecting: " + err.stack);
    return;
    }
    console.log("connected as id " + connection.threadId);
});

// Export connection for ORM to use.
module.exports = connection;