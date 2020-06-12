<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
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

	<div class="container">
		<div class="row">
			<form action="writeAction.jsp" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd;">
					<tr>
						<td colspan="2"	style="background-color: #eeeeee; text-align: center">게시판 글쓰기 양식</td>
					</tr>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용"name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
					</tr>
				</table>
				<input type="text" class="form-control" placeholder="비밀번호" name="bbsPassword">
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
