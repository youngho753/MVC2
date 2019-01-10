<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.member.model.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
    <link type="text/css" rel="stylesheet" href="bootstrap-4.1.3-dist/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="main.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="bootstrap-4.1.3-dist/js/bootstrap.js"></script>
    <script>
		
    </script>
    <%
    Member mb = new Member();
    mb = (Member)session.getAttribute("loginMB");
    %>
</head>

<body>
    <div id="wrap">
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
    <nav>

            <h2>무엇을 찾고 계신가요?</h2>


            <a class="nav_a" href="#sukso">
                <div class="nav_div">
                    <div><img src="image/sukso.jpg"></div>
                    <div class = "nav_div2">숙소</div>
                </div>
            </a>
            <a class="nav_a" href="#trip">
                <div class="nav_div">
                    <div><img src="image/trip.jpg"></div>
                   <div class = "nav_div2">트립</div>
                </div>
            </a>
            <a class="nav_a" href="#sikdang">
                <div class="nav_div">
                    <div><img src="image/sikdang.jpg"></div>
                    <div class = "nav_div2">식당</div>
                </div>
            </a>

        </nav>
        <aside>
            <fieldset>
                <legend>메뉴 접기</legend>
                <ul id="aside_ul">
                    <li><a href = "main.jsp">홈으로</a></li>
                    <li><a href = "#sukso">숙소</a></li>
                    <li><a href = "#trip">트립</a></li>
                    <li><a href = "#sikdang">식당</a></li>
                    <li><a href = "login.jsp">로그인</a></li>
                    <li><a href = "join.jsp">회원가입</a></li>
                </ul>
            </fieldset>
        </aside>

        <section>
            <article>
                <h2 id="sukso">숙소</h2>
                <div>
                    <a href="#"><img src="image/sukso/glamm.jpg"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sukso/tree.jpg"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sukso/water.jpg"></a>
                </div>
            </article>
            <article>
                <h2 id="trip">트립</h2>
                <div>
                    <a href="#"><img src="image/trip/sanghai.jpg" class="tripImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/trip/osaka.jpg" class="tripImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/trip/paris.jpg" class="tripImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/trip/seoul.jpg" class="tripImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/trip/tokyo.jpg" class="tripImage"></a>
                </div>
            </article>
            <article>
                <h2 id="sikdang">식당</h2>
                <div>
                    <a href="#"><img src="image/sikdang/1.jpg" class="sikdangImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sikdang/2.jpg" class="sikdangImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sikdang/3.jpg" class="sikdangImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sikdang/4.jpg" class="sikdangImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sikdang/5.jpg" class="sikdangImage"></a>
                </div>
                <div>
                    <a href="#"><img src="image/sikdang/6.jpg" class="sikdangImage"></a>
                </div>
            </article>
        </section>
        <footer>
            copyrights by YH 2018
        </footer>

    </div>
</body>
<script>
    var hideOn = 0;


    $("legend").click(function() {
        if (hideOn == 0) {
            $("#aside_ul").hide(500);
            $("legend").text("메뉴 펼치기");
            hideOn = 1;
        } else {
            $("#aside_ul").show(500);
            $("legend").text("메뉴 접기");
            hideOn = 0;
        }


    });
</script>

</html>