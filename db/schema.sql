-- Drops the burgers_db if it exists currently. Only need it if you don't have a database--
DROP DATABASE IF EXISTS burgers_db;
-- Creates the "burgers_db" database --
CREATE DATABASE burgers_db;
-- Makes it so all of the following code will affect burgers_db--
USE burgers_db;

-- Creates the table "burger" within burgers_db --
CREATE TABLE burgers (
    -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows. --
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    -- Makes an string column called "burger_name" --
    burger_name VARCHAR (150),
    -- Makes a boolean column called "devoured" --
    devoured BOOLEAN DEFAULT 0,
    date TIMESTAMP
);