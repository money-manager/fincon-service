const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.urlencoded({extended: true }));

require('./routes')(app, {});
const port = 8000;
app.listen(port, ( ) =>  
	console.log('service is started on port ', port)
);
