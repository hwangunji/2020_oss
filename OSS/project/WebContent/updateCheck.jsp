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
</head>
<body>
<form action="update.jsp?bbsID=<%=bbsID%>" method="post">
		<input name="delete_check" type="text" placeholder="Enter your password">
		<input type="submit" class="btn btn-primary pull-right" value="submit">
	</form>
</body>
</html>