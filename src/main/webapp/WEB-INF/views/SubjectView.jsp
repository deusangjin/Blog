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
<title>Generic - Hyperspace by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, user-scalable=no" />
<script src="js/IndexScript.js"></script>
<script
  src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<link rel="stylesheet" href="css/Main/MainView.css" />
<link rel="stylesheet" href="css/Main/mainNoscript.css" />
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
<%@ include file="aside.jsp"%>
<body class="is-preload" style="text-align: center;">

  <!-- Header -->
  <header id="header">
    <a href="index.html" class="title">${id }'s Blog</a>
    <nav>
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="generic.html" class="active">Generic</a></li>
        <li><a href="elements.html">Elements</a></li>
      </ul>
    </nav>
  </header>







  <!-- Wrapper -->
  <div id="wrapper">

    <!-- Main -->
    <section id="main" class="wrapper style2 spotlights">
      <div class="inner">
      
        <div id="titleSubject">
          
        </div>
        
        <span class="image fit"><img src="images/pic04.jpg"
          alt="" /></span> <input type="hidden" id="id" value="${id}">
        <input type="hidden" id="subject" value="${subject}">
        <div class="container">
          <div id="view"></div>
        </div>
      </div>
    </section>

  </div>

  <!-- Footer -->

  <!-- Scripts -->


</body>
</html>