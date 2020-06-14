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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="navbar.css">
	<link href="https://fonts.googleapis.com/css?family=Vollkorn|Roboto" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Q&A</title>
</head>
<body>
	<nav class='navbar navbar-inverse navbar-fixed-top'>
		<div class='container-fluid'>
			<div class='navbar-header'>
				<a id='logo' class='navbar-brand' href='main.html'>PARATUS</a>
				<button class='btn navbar-btn btn-link pull-right' data-target='#modalNavigation' data-toggle='modal' type='button'>
					<span class='glyphicon glyphicon-menu-hamburger'></span>
				</button>
				<button id='logout' class='btn navbar-btn pull-right button' onclick="signOut();">Logout</button>
				<div id='login' class="btn navbar-btn pull-right g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
			</div>
		</div>
	</nav>
	<div class='modal fade modal-fullscreen-menu' id='modalNavigation' role='dialog' tabindex='-1'>
		<button aria-label='Close' class='close' data-dismiss='modal' type='button'>
			<span class='glyphicon glyphicon-remove'></span>
		</button>
		<div class='modal-dialog'>
			<nav class='list-group'>
				<div>
					<a class='list-group-item' href='main.html'>Home</a>
					<a class='list-group-item' href='about.html'>About</a>
					<a class='list-group-item' href='timetable.html'>Timetable</a>
					<a class='list-group-item' href='taskscheduler.html'>Task Scheduler</a>
					<a class='list-group-item' href='bbs.jsp'>Q&A</a>
				</div>
			</nav>
		</div>
	</div>
	<%

		int bbsID = 0;
	String delete_check=request.getParameter("delete_check");
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href='bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		BbsDAO bbsDAO = new BbsDAO();
		if (!delete_check.equals(bbs.getBbsPassword())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 비밀번호')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
	%>

	<div class="container">
		<div class="row">
			<form action="updateAction.jsp?bbsID=<%=bbsID%>" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd;">
					<tr>
						<td colspan="2"
							style="background-color: #eeeeee; text-align: center">게시판
							글수정 양식</td>
					</tr>
					<tr>
						<td><input type="text" class="form-control"
							placeholder="글 제목" name="bbsTitle" maxlength="50"
							value="<%=bbs.getBbsTitle()%>"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용"
								name="bbsContent" maxlength="2048" style="height: 350px;"><%=bbs.getBbsContent()%></textarea></td>
					</tr>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글수정">
			</form>
		</div>
	</div>

</body>
</html>
