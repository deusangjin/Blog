<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
.container {
	margin-top: 100px;
}
</style>
<script>
	$(function(){
		getSearch(1,$("#word").val(),$("#subject").val());
	})
</script>
  <input type = "hidden" id = "subject" value = "${subject}">
  <input type = "hidden" id = "word" value = "${word }">
  <div class="container ">
  
    <div id="area">
      
      
    </div>

  <div class=>
    <input type="text" id="word">
  </div>
  <div style="text-align: right;">
    <input type="button" value="글쓰기" id="insertBtn"
      onclick="javascript:Insert()"> <input type="button"
      id="btnSearch" value="검색"
      onclick="javascript:Search($('#word').val())">
  </div>



</div>
