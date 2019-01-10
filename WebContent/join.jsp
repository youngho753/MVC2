<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	$(document).ready(function(){
			
		
		$("#zipCode").click(function(){
			window.open("zipCode.jsp","","width=500 height=300");	//팝업창띄우기
		});
	});
	</script>
</head>

<body>
	<header>
		<a href="main.jsp"><img class="logo" src="image/logo.jpg"></a> <a
			class="btn btn-defualt" style="float: right" href="join.jsp">회원가입</a>
		<a class="btn btn-primary" style="float: right" href="login.jsp">로그인</a>
	</header>
	<hr>



	<section>
		<form id="Login" method = "post" action = "joinProc.jsp">
			<h2 style="margin-top: 50px; text-align: center">회원가입</h2>
			<br>
			<br>
			<table width="50%" class="form-group"
				style="margin-left: auto; margin-right: auto;">
				<tr>
					<td colspan="2">
						<div class="form-group">
							<input type="text" class="form-control" id="inputId" name = "userId"
								placeholder="ID">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="form-group">
							<input type="password" class="form-control" id="inputPassword" name = "pwd"
								placeholder="Password">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="form-group">
							<input type="password" class="form-control" id="inputRePassword"
								placeholder="Password-Repeat">
						</div>
					</td>

				</tr>
				<tr>
					<td><span id="pwCheck"></span></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-secondary active"> <input
								type="radio" name="gender" value="남" autocomplete="off" checked>
								남
							</label> <label class="btn btn-secondary"> <input type="radio"
								name="gender" autocomplete="off" value="여"> 여
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="form-group">
							<input type="email" class="form-control" id="inputEmail" name = "email"
								placeholder="aaa@.com">
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="text" class="form-control" placeholder = "클릭해주세요"
						id="zipCode" name="zipCode" style = "background-color : white;"readonly></td>
					<td><input type="text" class="form-control" placeholder = "상세주소를 적어주세요"
						id="addr" name="addr"></td>
				</tr>
				<tr>
					<td style="text-align: right"><input type="submit"
						class="btn btn-primary" id="allCheck" value="회원가입"></td>
					<td><a href="main.jsp"><input type="button" id="back"
							type="submit" class="btn btn-primary" value="돌아가기"></a></td>
				</tr>

			</table>

		</form>
	</section>
</body>
<script>
    $("#inputRePassword").keyup(function() {
        if ($("#inputPassword").val() == $("#inputRePassword").val()) {
            $("#pwCheck").text("비밀번호가 일치합니다");

        } else {
            $("#pwCheck").text("비밀번호가 다릅니다");

        }
    });
    $("#allCheck").click(function() {
        if ($("#inputId").val() == "") {
            alert("아이디를 입력하세요.");
            return false;
        }
        if ($("#inputPassword").val() == ""){
            alert("비밀번호를 입력하세요.");
        return false;
        }
        if ($("#inputPassword").val() != $("#inputRePassword").val()) {
            alert("비밀번호확인을 다시하세요.");
            return false;
        }
        if ($("#inputEmail").val() == "") {
            alert("이메일을 넣으세요.");
            return false;
        }
    });
</script>

</html>

