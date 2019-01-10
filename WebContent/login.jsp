<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.member.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link type="text/css" rel="stylesheet" href="login.css">
<link type="text/css" rel="stylesheet"
	href="bootstrap-4.1.3-dist/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="bootstrap-4.1.3-dist/js/bootstrap.js"></script>

<script>
	$(document).ready(function() {
			$("#forgot").click(function() {
				alert("다음에 찾아드릴게요");
			});
			$("#allCheck").click(function() {
			if ($("#inputId").val() == "") {
				alert("아이디를 입력하세요.");
				return false;
			}
			if ($("#inputPassword").val() == "") {
				alert("비밀번호를 입력하세요.");
				return false;
			}
		});
	});
</script>
<%
	Member mb = new Member();
	mb = (Member)session.getAttribute("loginMB");//mb가져옴
%>
</head>

<body>
	<header>
	<a href="main.jsp"><img class="logo" src="image/logo.jpg"></a><!-- 로고 -->
	<%if(mb!= null){//회원일때 %>
		<a class="btn btn-defualt" style="float: right" href="#">내정보</a>
		<a class="btn btn-defualt" style="float: right" href="logout.jsp">로그아웃</a>
	<%}else{//비회원일때%>
		<a class="btn btn-defualt" style="float: right" href="join.jsp">회원가입</a>
		<a class="btn btn-primary" style="float: right" href="login.jsp">로그인</a>
	<%}%>
	
	</header>
	<hr>



	<section>
		<form action = "loginProc.jsp" id="Login" method = "post">
			<h2 style="margin-top: 50px; text-align: center">로그인</h2>
			<br>
			<br>
			<table width="50%" class="form-group"
				style="margin-left: auto; margin-right: auto;">
				<tr>
					<td><input type="text" class="form-control" name="userId"
						id="inputId" placeholder="ID"></td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<input type="password" class="form-control" name="pwd"
								id="inputPassword" placeholder="Password">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="forgot">
							<a href="main.jsp" id="forgot">Forgot password?</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="submit" class="btn btn-primary" id="allCheck"
						value="Login"></td>
				</tr>

			</table>
		</form>
	</section>

</body>
</html>