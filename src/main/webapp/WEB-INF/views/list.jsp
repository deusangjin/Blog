<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="js/IndexScript.js"></script>
<style>
.container {
	margin-top: 100px;
}
</style>

<script>
 	
</script>

    <input type="hidden" value="${id }" id="id">
  <div class="container ">
  
    <div id="area">
    </div>
    <div class="text-right">
      <input type="button" value="글쓰기" id="insertBtn">
    </div>
    <div class="text-center">
      <input type="text" id="word">
      <input type="button" id="btnSearch" value="검색">
    </div>
    
    
  </div>
