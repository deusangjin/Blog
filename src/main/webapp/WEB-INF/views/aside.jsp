<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
html.open {
	overflow: hidden;
}

.slideBtn {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 50%;
	z-index: 1;
	background-image:
		url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/menu.png");
	background-size: 50%;
	background-repeat: no-repeat;
	background-position: center;
	cursor: pointer;
}

.close {
	width: 50px;
	height: 50px;
	position: absolute;
	right: 0px;
	top: 0px;
	background-image:
		url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/close.png");
	background-size: 50%;
	background-repeat: no-repeat;
	background-position: center;
	cursor: pointer;
}

#menu {
	width: 15%;
	height: 100%;
	position: absolute;
	top: 0px;
	left: -400px;
	z-index: 10;
	border: 1px solid #c9c9c9;
	background-color: black;
  
	transition: All 0.2s ease;
	-webkit-transition: All 0.2s ease;
	-moz-transition: All 0.2s ease;
	-o-transition: All 0.2s ease;
}

#menu.open {
	left: 0px;
}

#menu.open p {
	color: white;
	left: 0%;
	position: relative;
	top: 15%;
	font-size: 1.5em;
	font-weight: bold;
	cursor: pointer;
}

.page_cover {
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0px;
	left: 0px;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 4;
	display: none;
}
</style>
<script>
	
</script>
<div class="slideBtn"></div>
<div onclick="history.back();" class="page_cover"></div>
<div id="menu">
	<p id="android">
     <input type="hidden" id="hAndroid" name = "subject" value="안드로이드"> 안드로이드
	</p>
  
	<p id="java">
		<input type="hidden" id="hJava" value="JAVA">JAVA
	</p>
	<p id="db">
		<input type="hidden" id="hDb" value="DB">DB
	</p>
	<p id="spring">
		<input type="hidden" id="hSpring" value="SPRING">SPRING
	</p>
	<p id="jsp">
		<input type="hidden" id="hJsp" value="JSP">JSP
	</p>
	<div onclick="history.back();" class="close"></div>
</div>

    <form action = "SubjectView" method ="get" id = "frmAndroid">
      <input type="hidden" name = "subject" value="안드로이드"> 
            <input type="hidden" value="0" name="num">
    </form>
    <form action = "SubjectView" method ="get" id = "frmJava">
      <input type="hidden" name = "subject" value="JAVA"> 
            <input type="hidden" value="0" name="num">
    </form>
    <form action = "SubjectView" method ="get" id = "frmDb">
      <input type="hidden" name = "subject" value="DB"> 
            <input type="hidden" value="0" name="num">
    </form>
    <form action = "SubjectView" method ="get" id = "frmSpring">
      <input type="hidden" name = "subject" value="SPRING"> 
            <input type="hidden" value="0" name="num">
    </form>
    <form action = "SubjectView" method ="get" id = "frmJsp">
      <input type="hidden" name = "subject" value="JSP"> 
            <input type="hidden" value="0" name="num">
    </form>
<script>
	$(".slideBtn").click(function() {
		$("#menu,.page_cover,html").addClass("open");
		window.location.hash = "#open";

		$("#android").on("click", function() {
			getSearch(1,"",$("#hAndroid").val());
			$("#frmAndroid").submit();
			$("#titleSubject").html("<h1 class='major' id='hsubject'>ANDROID</h1>");
		});	
	 	$("#java").on("click", function() {
			getSearch(1,"",$("#hJava").val());
			$("#frmJava").submit();
			$("#titleSubject").html("<h1 class='major' id='hsubject'>JAVA</h1>");
	 	});
		$("#db").on("click", function() {
			getSearch(1,"",$("#hDb").val());
			$("#frmDb").submit();
			$("#titleSubject").html("<h1 class='major' id='hsubject'>DB</h1>");
		});
		$("#spring").on("click", function() {
			getSearch(1,"",$("#hSpring").val());
			$("#frmSpring").submit();
			$("#titleSubject").html("<h1 class='major' id='hsubject'>SPRING</h1>");
		});
		$("#jsp").on("click", function() {
			getSearch(1,"",$("#hJsp").val());
			$("#frmJsp").submit();
			$("#titleSubject").html("<h1 class='major' id='hsubject'>JSP</h1>");
		});
	});

	window.onhashchange = function() {
		if (location.hash != "#open") {
			$("#menu,.page_cover,html").removeClass("open");
		}
	};
</script>

