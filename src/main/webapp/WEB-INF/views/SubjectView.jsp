<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
  Hyperspace by HTML5 UP
  html5up.net | @ajlkn
  Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Blog</title>
<script src="js/IndexScript.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, user-scalable=no" />
<script
  src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script>
	$(document).ready(function() {
		$.ajax({
			type : "get",
			url : "list",
			data : {
				"subject" : $("#subject").val()
			},
			success : function(data) {
				$("#view").html(data);
				$("#titleSubject").html("<h1 class='major' id='hsubject'>${subject }</h1>");
			}
		});
		
		
	})
	
</script>
</head>

<body class="is-preload"
  style="text-align: center; background-color: black;">

<input type = "text" value = "${num }" id = "num">
<%@include file="SubJectHeader.jsp" %>
  <!-- Wrapper -->
  <div id="wrapper">

    <!-- Main -->
    <section id="main" class="wrapper style2 spotlights">
      <div class="inner">
        <div id="titleSubject"></div>
        <span class="image fit"><img src="images/pic04.jpg"
          alt="" /></span> <input type="hidden" id="id" value="${id}">
        <input type="hidden" id="subject" value="${subject}">
        <div class="container">
          <div id="view"></div>
          
          
          <div id="detailView"></div>
          
          
        </div>
      </div>
    </section>
  </div>

  <!-- Footer -->
  <footer id="footer" class="wrapper style1-alt">
    <div class="inner">
      <ul class="menu">
        <li>&copy; Untitled. All rights reserved.</li>
        <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
      </ul>
    </div>
  </footer>
  <!-- Scripts -->
  <%@ include file="aside.jsp"%>

</body>
</html>