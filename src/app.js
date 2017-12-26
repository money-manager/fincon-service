const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const config = require('./config.json');
const sqlite = require('sqlite3').verbose();
const dbpath = path.join(process.env.APP, config.db);
const db = new sqlite.Database(dbpath);

const app = express();
app.use(bodyParser.urlencoded({extended: true }));

require('./routes')(app, db);
const port = config.server_port;
app.listen(port, () =>  
	console.log('service is started on port ', port)
);
