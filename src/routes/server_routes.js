module.exports = (app, db) => {
    db.getAsync = function (sql) {
        var that = this;
        return new Promise(function (resolve, reject) {
            that.all(sql, function (err, row) {
                if (err)
                    reject(err);
                else
                    resolve(row);
            });
        });
    };

    app.get('/hello', (req, res) => {
        db.getAsync("select COMMENT from test").then((row) => {
            res.send(row[0].COMMENT);
        }).catch((err) => {
            console.log(err);
            res.send("fail");
        });
    });
};