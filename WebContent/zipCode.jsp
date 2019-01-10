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
	$("#dong").keydown(function(e){	//key down시
		if(e.keyCode == 13){				//key가 enter일때
			sendIt();						//sendIt()실행
		return false;
		}
	});
	$("#result").on("click","tr",function(){//on함수 왼쪽과 오른쪽 연결
		var address =   $("td:eq(0)",this).text()+" "+
						$("td:eq(1)",this).text()+" "+
						$("td:eq(2)",this).text()+" "+
						$("td:eq(3)",this).text()+" "+
						$("td:eq(4)",this).text();
	$(opener.document).find("#zipCode").val(address);//이 웹사이트를 열어준 페이지로 정보를 넘김
	$(opener.documnet).find("#zipCode2").val(address);
	//$(opener.document).find("#addr").val(address);
	self.close();
	});
	
});
function sendIt(){
	$.ajax({
		type : "post",
		url : "zipCheckProc.jsp",
		data : {"dong":$("#dong").val()},
			success:function(data){
					data = $.parseJSON(data);
					var htmlStr = "";
					htmlStr += "<table>";
					for(var i=0;i<data.length;i++){
						htmlStr += "<tr>";
						htmlStr += "<td>"+data[i].zipcode+"</td>";
						htmlStr += "<td>"+data[i].sido+"</td>";
						htmlStr += "<td>"+data[i].gugun+"</td>";
						htmlStr += "<td>"+data[i].dong+"</td>";
						htmlStr += "<td>"+data[i].bunji+"</td>";
						htmlStr += "</tr>";
					}
					htmlStr += "</table>";
					$("#result").html(htmlStr);
			},
			error:function(e){
				alert("error:"+e);
			},
			beforeSend :check		//유효성검사 check에 ()붙이면 안됨 함수인데도 javascript언어특성
	});
} 

function check(){
	if($("#dong").val()==""){
		alert("동이름 입력");
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<input type = "text" id = "dong" name = "dong" class = "form-control" placeholder="살고있는 동을 적어 주세요">
	<div id = "result">
	</div>
</body>
</html>