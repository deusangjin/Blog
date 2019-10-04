
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
<%@include file="SubJectHeader.jsp" %>
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
        <a href="#" class="image"><img src="images/img01.jpg" alt=""
          data-position="center center" /></a>
        <div class="content">
          <div class="inner">
          <form action="SubjectView" method="get" id="frmANDROID">
            <input type="hidden" value="안드로이드" name="subject">
            <input type="hidden" value="0" name="num">
          </form>
            <h2>Android</h2>
            <p>Phasellus convallis elit id ullamcorper pulvinar.
              Duis aliquam turpis mauris, eu ultricies erat malesuada
              quis. Aliquam dapibus.</p>
            <ul class="actions">
              <li><input type="button" value="MORE" onclick="javascript:Category('frmANDROID')"></li>
            </ul>
          </div>
        </div>
      </section>
      
      
<!-- -------------------------------------------------------------------------------------------- -->

      <section id="java">
        <a href="#" class="image"><img src="images/img02.jpg" alt=""
          data-position="top center" /></a>
        <div class="content">
          <div class="inner">
          <form action="SubjectView" method="get" id="frmJAVA">
            <input type="hidden" value="JAVA" name="subject">
            <input type="hidden" value="0" name="num">
          </form>
            <h2>Java</h2>
            <p>Phasellus convallis elit id ullamcorper pulvinar.
              Duis aliquam turpis mauris, eu ultricies erat malesuada
              quis. Aliquam dapibus.</p>
            <ul class="actions">
              <li><input type="button" value="MORE" onclick="javascript:Category('frmJAVA')"></li>
            </ul>
          </div>
        </div>
      </section>
      
<!-- -------------------------------------------------------------------------------------------- -->


      <section id="db">
        <a href="#" class="image"><img src="images/img03.jpg" alt=""
          data-position="25% 25%" /></a>
        <div class="content">
          <div class="inner">
          <form action="SubjectView" method="get" id="frmDB">
            <input type="hidden" value="DB" name="subject">
            <input type="hidden" value="0" name="num">
          </form>
            <h2>DataBase</h2>
            <p>Phasellus convallis elit id ullamcorper pulvinar.
              Duis aliquam turpis mauris, eu ultricies erat malesuada
              quis. Aliquam dapibus.</p>
            <ul class="actions">
              <li><input type="button" value="MORE" onclick="javascript:Category('frmDB')"></li>
            </ul>
          </div>
        </div>
      </section>
      
<!-- -------------------------------------------------------------------------------------------- -->

      <section id="spring">
        <a href="#" class="image"><img src="images/img02.jpg" alt=""
          data-position="top center" /></a>
        <div class="content">
          <div class="inner">
            <form action="SubjectView" method="get" id="frmSPRING">
              <input type="hidden" value="SPRING" name="subject">
            <input type="hidden" value="0" name="num">
            </form>
            <h2>Spring</h2>
            <p>Phasellus convallis elit id ullamcorper pulvinar.
              Duis aliquam turpis mauris, eu ultricies erat malesuada
              quis. Aliquam dapibus.</p>
            <ul class="actions">
              <li><input type="button" value="MORE" onclick="javascript:Category('frmSPRING')"></li>
            </ul>
          </div>
        </div>
      </section>
      
      
<!-- -------------------------------------------------------------------------------------------- -->

      <section id="jsp">
        <a href="#" class="image"><img src="images/img03.jpg" alt=""
          data-position="25% 25%" /></a>
        <div class="content">
        
        <form action ="SubjectView" method="get" id = "frmJSP">
          <input type ="hidden" value = "JSP" id = "subject" name="subject">
            <input type="hidden" value="0" name="num">
        </form>
          <div class="inner">
            <h2>Jsp</h2>
            <p>Phasellus convallis elit id ullamcorper pulvinar.
              Duis aliquam turpis mauris, eu ultricies erat malesuada
              quis. Aliquam dapibus.</p>
            <ul class="actions">
              <li><input type="button" value ="MORE" onclick="javascript:Category('frmJSP')"></li>
            </ul>
          </div>
        </div>
      </section>
      
<!-- -------------------------------------------------------------------------------------------- -->


    </section>
  </div>
  <script>
  	function Category(subject){
  		$("#"+subject).submit();
  	}
  </script>
</body>
</html>
