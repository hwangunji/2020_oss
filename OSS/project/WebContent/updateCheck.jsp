<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%
	request.setCharacterEncoding("UTF-8");
int bbsID = 0;
bbsID = Integer.parseInt(request.getParameter("bbsID"));
Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
  background: #eee !important;
}

.wrapper {
  margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.1);
}
.form-signin .form-signin-heading,

.form-signin .form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
  box-sizing: border-box;
}
.form-signin .form-control:focus {
  z-index: 2;
}

.form-signin input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

</style>
</head>
<body>
<div class="wrapper">
    <form class="form-signin" action="update.jsp?bbsID=<%=bbsID%>" method="post" >       
      <h2 class="form-signin-heading">Password Check</h2>
        <input type="password" class="form-control" name="delete_check" placeholder="Password">      
      <button class="btn btn-lg btn-primary btn-block" type="submit">submit</button>   
    </form>
  </div>
</body>
</html>
  