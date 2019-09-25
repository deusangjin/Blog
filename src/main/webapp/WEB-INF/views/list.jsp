<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	margin-top: 100px;
}
</style>

<script>
	$(function() {

		getSearch(1, "");

		$("#btnSearch").on("click", function() {
			if ($("#word").val() == "") {
				alert("검색어를 입력하세요.");
				return false;
			}
			getSearch(1, $("#word").val());
		});
	})

	function getSearch(pageNum, word) {
		$.post("list", {
			"pageNum" : pageNum,
			"word" : word
		}, function(data) {
			$("#area").html(data);
		});
	}
</script>

</head>
<body>
  <%@ include file="header.jsp"%>
  <div class="container ">
  
    <div id="area"> </div>
    
    <a><input type="button" value="글쓰기" class="btn pull-right" onclick="location.href='insert'"></a>
    

    <div class="text-center">
      <input type="text" id="word"> <input type="button"
        id="btnSearch" value="검색">
    </div>

  </div>

</body>
</html>