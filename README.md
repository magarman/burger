# Eat Da Burger
A Burger Eating Application With Node.js/Express/MySQL/Handlebars

## Description

This application uses handlebars and HTML templating on the front end and allows the user to log burgers with MySQL, Node, Express, and a homemade ORM, on the back-end.

## How it Works

* This restaurant app lets users submit any burger name to add it to the menu.
* Once a burger name is submitted, the app will display its name on the left hand side, under "waiting to be devoured".
* Each burger in the waiting area also has a `Devour it!` button. Whenever the user clicks this button, the burger will move to the right side of the page.
* Each burger (eaten/devoured or not) will be stored in a database.

#### DB

The 'burgers_db' database has a table callsed 'burgers', this includes **id**, **burger_name**, **devoured**, and **time**.

#### Config 

The `burger` folder contains `config`, which stores the 'connection.js' file that connects Node to MySQL, it also includes an 'orm.js' file that imports 'connection.js' and defines the methods that will execute the necessary MySQL commands in the controllers. The ORM is imported.

     * `selectAll()` 
     * `insertOne()` 
     * `updateOne()` 

#### Model 

The `burger` folder also holds the `models` folder, which stores 'burger.js' file. The 'burger.js' calls the ORM functions (from orm.js on config), it is exported at the end of the 'burger.js' file.

#### Controller

Within `burger`, there is also the `controllers` folder which has the 'burgers_controller.js' file. Express and 'burger.js' are imported and a 'router' for the app was created and exported.

#### View 

The `views` folder (also inside of `burger`), include both handlebars files.

## Installation

To run the application locally, clone this repository to your machine.
Next, install the application dependencies.
	cd eat-da-burger
	npm install
Lastly, run the node server locally.

**Enjoy and have a burger!**
