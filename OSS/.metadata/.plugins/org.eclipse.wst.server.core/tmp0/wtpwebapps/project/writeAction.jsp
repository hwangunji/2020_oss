<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<jsp:setProperty name="bbs" property="bbsPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 부트스트랩 사용 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="navbar.css">
	<link href="https://fonts.googleapis.com/css?family=Vollkorn|Roboto" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Q&A</title></head>
<body>
	<%

			if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('None Input')");
				script.println("history.back()");
				script.println("</script>");
			} else {

				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.write(bbs.getBbsTitle(), bbs.getBbsContent(), bbs.getBbsPassword());

				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('FAILED.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.print("location.href = 'bbs.jsp'");
					script.println("</script>");
				}
			}
	%>
</body>
</html>
