module.exports = (app, db) => {
    app.get('/hello', (req, res) => {
        res.send("It works!");
    });
};