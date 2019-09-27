<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

<script src="js/IndexScript.js"></script>

<script>
	$(document).ready(function() {
		start();
	})
	
	function start(){
		$.ajax({
			type : "get",
			url : "list",
			data : {"id" : $("#id").val()},
			success : function(data) {
				$("#view").html(data);
			}
		});
	}
</script>

  <%@ include file="header.jsp"%>
  <%@include file="aside.jsp"%>
  <div class="container">
    <div id="view"></div>
  </div>
