var http = require('http');
var fs = require('fs');
var url = require('url');
var qs = require('querystring');
var mysql = require('mysql');

var con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',
  port: 3306,
  database: 'login'
});

var app = http.createServer(function(request, response) {
  var _url = request.url;
  var queryData = url.parse(_url, true).query;
  var pathname = url.parse(_url, true).pathname;
  if (pathname === '/signup') {
    var body = '';
    request.on('data', function(data) {
      body = body + data;
    });
    request.on('end', function() {
      var post = qs.parse(body);
      id = post.ID;
      pw = post.PW;
      con.connect(function(err) {
        if (err) throw err;
        var sql = 'INSERT INTO user (id, pw) VALUES(?, ?)';
        var params = [id, pw];
        con.query(sql, params, function(err, rows, result) {
          if (err) throw err;
        });
      });
    });
    response.writeHead(200);
    response.write("<script language=\"javascript\">alert('테스트')</script>");
    response.write("<script language=\"javascript\">window.location=\"WebProject.html\"</script>");

  }
});
app.listen(3000);
