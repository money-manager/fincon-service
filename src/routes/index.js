const serverRoutes = require('./server_routes');
module.exports = (app, db) => {
    serverRoutes(app, db);
}