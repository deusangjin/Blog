<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/all.js"></script>
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<style>
.mainDiv {
	background: rgba(102, 153, 255, 0.2);
	border-radius: 5px;
	border: 1px solid black;
	position: absolute;
	top: 45%;
	left: 45%;
	text-align: center;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-top: 10px;
}
.mainDiv a {
	font-weight: bold;
  color: white;
}
body{
      background: url(imges/black.jpg) no-repeat center center fixed;
 
    -webkit-background-size: cover;
 
    -moz-background-size: cover;
 
    -o-background-size: cover;
 
    background-size: cover;
}
p{
 color: white;
}
</style>

<script>
	$(function(){
		$("#join").on('click',function(){
			location.href="join";
		});
		$("#login").on("click",function(){
			$("#frm").submit();
		})
	})
	
	
</script>

</head>
<body>
  <div class="mainDiv">
    <form action="mainView" method= "get" id ="frm">
    
      <p>ID</p><input type="text" name = "id"><br>
      <p>PW</p><input type="password" name = "pwd">
      <input type="button" id ="login" value="LOGIN">
      <input type="button" id="join" value="가입">
    </form>
    
  </div>
</body>
</html>