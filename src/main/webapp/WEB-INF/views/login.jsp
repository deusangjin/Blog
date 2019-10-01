<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Dimension by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/noscript.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
          <%@include file="loginHeader.jsp" %>

    <!-- Main -->
    <div id="main">

      <article id="loginView">
        <h2 class="major" style="text-align: center;">Login</h2>
        <form action="login" method="post" id="frm">
          <p>ID</p>
          <input type="text" name="id"><br>
          <p>PW</p>
          <input type="password" name="pwd"> <br> <input
            type="button" id="login" value="LOGIN">
        </form>
      </article>
      <article id="joinView">
        <h2 class="major">간편회원가입</h2>
        <form action="join" method="POST" id="frmJoin">
          <p>ID</p>
          <input type="text" id="userid" name="id"
            placeholder="아이디를 입력하세요"><br>
          <p>PW</p>
          <input type="password" id="pwd" name="pwd" size="10">
          <p>NAME</p>
          <input type="text" name="name" id="name" class="form-control">
          <div>
            <p>GENDER</p>
            <input type="radio" name="gender" checked="checked"
              value="남">남 <input type="radio" name="gender"
              value="여">여
          </div>
          <br> <input type="button" id="memberInsert" value="가입">
        </form>
      </article>


    </div>

    <!-- Footer -->
					<%@include file="loginFooter.jsp" %>
			</div>

		<!-- BG -->
			<div id="bg"></div>


  <!-- Scripts -->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="js/breakpoints.min.js"></script>
  <script src="js/browser.min.js"></script>
  <script src="js/jquery.min.js"></script>
  <script src="js/util.js"></script>
  <script src="js/main.js"></script>
  <script src="js/blog.js"></script>
	</body>
</html>
