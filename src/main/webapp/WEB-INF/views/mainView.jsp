
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Hyperspace by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="css/Main/MainView.css" />
<link rel="stylesheet" href="css/Main/mainNoscript.css" />
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="js/IndexScript.js"></script>
<style>
img {
	
}
</style>
<script>
	$(document).ready(function() {

		$.ajax({
			type : "get",
			url : "list",
			success : function(data) {
				$("#view").html(data);
			}
		});
	})
</script>
</head>
<body class="is-preload">

	<!-- Sidebar -->
	<section id="sidebar" style="text-align: center;">
		<div class="inner">
			<nav>
				<ul>
					<li><a href="#intro">Welcome</a></li>
					<li><a href="#android">안드로이드</a></li>
					<li><a href="#java">JAVA</a></li>
					<li><a href="#db">DB</a></li>
					<li><a href="#spring">SPRING</a></li>
					<li><a href="#jsp">JSP</a></li>
				</ul>
			</nav>
		</div>
	</section>
	<!-- Wrapper -->

	<div id="wrapper">
		<%@include file="mainHeader.jsp"%>
		<!-- Intro -->
		<section id="intro" class="wrapper style1 fullscreen fade-up">

			<div class="inner">
				<input type="hidden" value="${id }" id="id">

				<%@include file="index.jsp"%>
			</div>
		</section>
		<!-- One -->

		<!-- -------------------------------------------------------------------------------------------- -->
		<section id="android" class="wrapper style2 spotlights">
			<section>
				<a href="#" class="image"><img src="images/android.png" alt=""
					data-position="center center" /></a>
				<div class="content">
					<div class="inner">
						<form action="SubjectView" method="get" id="frmANDROID">
							<input type="hidden" value="안드로이드" name="subject"> <input
								type="hidden" value="0" name="num">
						</form>
						<h2>Android</h2>
						<p>안드로이드(영어: Android)는 휴대 전화를 비롯한 휴대용 장치를 위한 운영 체제와 미들웨어, 사용자
							인터페이스 그리고 표준 응용 프로그램(웹 브라우저, 이메일 클라이언트, 단문 메시지 서비스(SMS), 멀티미디어
							메시지 서비스(MMS)등)을 포함하고 있는 소프트웨어 스택이자 모바일 운영 체제이다.</p>
						<ul class="actions">
							<li><input type="button" value="MORE"
								onclick="javascript:Category('frmANDROID')"></li>
						</ul>
					</div>
				</div>
			</section>


			<!-- -------------------------------------------------------------------------------------------- -->

			<section id="java">
				<a href="#" class="image"><img src="images/java.png" alt=""
					data-position="top center" /></a>
				<div class="content">
					<div class="inner">
						<form action="SubjectView" method="get" id="frmJAVA">
							<input type="hidden" value="JAVA" name="subject"> <input
								type="hidden" value="0" name="num">
						</form>
						<h2>Java</h2>
						<p>Java는 플랫폼에 독립적인 언어이다.소스 코드를 기계어로 직접 컴파일하여 링크하는 C/C++의 컴파일러와
							달리 자바 컴파일러는 바이트코드인 클래스 파일(.class)을 생성하고, 이 파일의 바이트코드를 읽은 뒤 기계어로
							바꾸어 실행하는 것은 Java Virtual Machine(JVM)이다. 대표적인 예로 Eclipse가 있다.</p>
						<ul class="actions">
							<li><input type="button" value="MORE"
								onclick="javascript:Category('frmJAVA')"></li>
						</ul>
					</div>
				</div>
			</section>

			<!-- -------------------------------------------------------------------------------------------- -->


			<section id="db">
				<a href="#" class="image"><img src="images/database.png" alt=""
					data-position="25% 25%" /></a>
				<div class="content">
					<div class="inner">
						<form action="SubjectView" method="get" id="frmDB">
							<input type="hidden" value="DB" name="subject"> <input
								type="hidden" value="0" name="num">
						</form>
						<h2>DataBase</h2>
						<p>여러 사람에 의해 공유되어 사용될 목적으로 통합하여 관리되는 데이터의 집합을 말하는 개념이다. 줄여서
							DB라고도 하며, 특정 다수의 이용자들에게 필요한 정보를 제공한다든지 조직 내에서 필요로 하는 정보를 체계적으로
							축적하여 그 조직 내의 이용자에게 필요한 정보를 제공하는 정보 서비스 기관의 심장부에 해당된다.</p>
						<ul class="actions">
							<li><input type="button" value="MORE"
								onclick="javascript:Category('frmDB')"></li>
						</ul>
					</div>
				</div>
			</section>

			<!-- -------------------------------------------------------------------------------------------- -->

			<section id="spring">
				<a href="#" class="image"><img src="images/spring.png" alt=""
					data-position="top center" /></a>
				<div class="content">
					<div class="inner">
						<form action="SubjectView" method="get" id="frmSPRING">
							<input type="hidden" value="SPRING" name="subject"> <input
								type="hidden" value="0" name="num">
						</form>
						<h2>Spring</h2>
						<p>POJO(Plain Old Java Object) 방식,관점 지향 프로그래밍(Aspect Oriented
							Programming, AOP) 의존성 주입(Dependency Injection, DI), 제어
							반전(Inversion of Control, IoC),생명주기 등등의 특징을 가지고 있는 Java/JSP 기반의 웹
							프레임워크이다.</p>
						<ul class="actions">
							<li><input type="button" value="MORE"
								onclick="javascript:Category('frmSPRING')"></li>
						</ul>
					</div>
				</div>
			</section>


			<!-- -------------------------------------------------------------------------------------------- -->

			<section id="jsp">
				<a href="#" class="image"><img src="images/jsp.png" alt=""
					data-position="25% 25%" /></a>
				<div class="content">
					<form action="SubjectView" method="get" id="frmJSP">
						<input type="hidden" value="JSP" id="subject" name="subject">
						<input type="hidden" value="0" name="num">
					</form>
					<div class="inner">
						<h2>Jsp</h2>
						<p>자바 서버 페이지(Java Server Pages[1], JSP)는 HTML내에 자바 코드를 삽입하여 웹
							서버에서 동적으로 웹 페이지를 생성하여 웹 브라우저에 돌려주는 언어이다.</p>
						<ul class="actions">
							<li><input type="button" value="MORE"
								onclick="javascript:Category('frmJSP')"></li>
						</ul>
					</div>
				</div>
			</section>


			<!-- -------------------------------------------------------------------------------------------- -->


		</section>
	</div>
	<script>
		function Category(subject) {
			$("#" + subject).submit();
		}
	</script>
</body>
</html>
