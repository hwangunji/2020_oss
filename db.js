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
  if (pathname === '/signup') { //회원가입 시
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
    response.write("<script>");

    response.write("alert('You have successfully registered');");
    response.write("history.go(-2);"); //메인화면으로 가기

    response.write("</script>");
  }
  else if (pathname === '/login'){ //로그인 시

  }
});
app.listen(3000);
