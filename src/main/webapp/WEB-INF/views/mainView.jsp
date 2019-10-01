<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/styles.css">
<script src="js/all.js"></script>
<script src="js/IndexScript.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<script>
$(document).ready(function() {
	$.ajax({
		type : "get",
		url : "list",
		data : {"id" : $("#id").val()},
		success : function(data) {
			$("#view").html(data);
		}
	});
	
})
</script>
</head>
<body>
	${id }
    <input type="hidden" value="${id }" id="id">
	<%@ include file="header.jsp"%>
	<%@include file="aside.jsp"%>
	<%@include file="index.jsp"%>
</body>
</html>