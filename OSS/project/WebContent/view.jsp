<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 사용 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="navbar.css">
<link href="https://fonts.googleapis.com/css?family=Vollkorn|Roboto"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Q&A</title>
</head>
<body>
	<nav class='navbar navbar-inverse navbar-fixed-top'>
		<div class='container-fluid'>
			<div class='navbar-header'>
				<a id='logo' class='navbar-brand' href='main.html'>PARATUS</a>
				<button class='btn navbar-btn btn-link pull-right'
					data-target='#modalNavigation' data-toggle='modal' type='button'>
					<span class='glyphicon glyphicon-menu-hamburger'></span>
				</button>
				<button id='logout' class='btn navbar-btn pull-right button'
					onclick="signOut();">Logout</button>
				<div id='login' class="btn navbar-btn pull-right g-signin2"
					data-onsuccess="onSignIn" data-theme="dark"></div>
			</div>
		</div>
	</nav>
	<div class='modal fade modal-fullscreen-menu' id='modalNavigation'
		role='dialog' tabindex='-1'>
		<button aria-label='Close' class='close' data-dismiss='modal'
			type='button'>
			<span class='glyphicon glyphicon-remove'></span>
		</button>
		<div class='modal-dialog'>
			<nav class='list-group'>
				<div>
					<a class='list-group-item' href='main.html'>Home</a> <a
						class='list-group-item' href='about.html'>About</a> <a
						class='list-group-item' href='timetable.html'>Timetable</a> <a
						class='list-group-item' href='taskscheduler.html'>Task
						Scheduler</a> <a class='list-group-item' href='bbs.jsp'>Q&A</a>
				</div>
			</nav>
		</div>
	</div>
	<%
		int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('INVALID')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>


	<div style="margin-top:30%;"class="container">
		<div class="row">

			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd;">
				<tr>
					<th colspan="3"
						style="background-color: #eeeeee; text-align: center">Information
					</th>
				</tr>
				<tr>
					<td style="width: 20%;">Title</td>
					<td colspan="2"><%=bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
				</tr>

				<tr>
					<td style="width: 20%;">Date</td>
					<td colspan="2"><%=bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"
		+ bbs.getBbsDate().substring(14, 16) + "분"%></td>
				</tr>
				<tr>
					<td style="width: 20%;">Contents</td>
					<td colspan="2" style="min-height: 200px; text-align: left;">
						<%=bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
				</tr>
			</table>
			<a href="bbs.jsp" class="btn btn-primary">List</a> 
			<a href="updateCheck.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">Modify</a> 
			<a href="deleteCheck.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">Delete</a>

		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
