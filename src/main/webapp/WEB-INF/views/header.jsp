<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page session="true" %>
<style>
  .ka{
    padding-top: 30px;
  }
  .list-group-item{
    padding: 0px;
  }
  .container-fluid{
  padding-left: 0px;
  padding-right: 0px;
  }
  #logo{
    cursor:pointer;
  }
</style>
<script>

	$(function(){
		$("#logo").on("click",function(){
			location.href="mainView";
		})
	});
</script>
<header>

  <div class="container-fluid ">
    <div class="nav-wrapper" style="background-image: url('imges/ViewTest.jpg');">
      <div class="left-side">
        <div class="nav-link-wrapper active-nav-link a">
          <a href="mainView">HOME</a>
        </div>
      </div>
      <div class="center">
        <h1 class="text text-uppercase">
          <strong id="logo">${id }'s blog</strong>
        </h1>
      </div>
      <div class="left-side">
        <!-- right-side는  아래로 배치
        left-side는 세로배치-->
        <div class="nav-link-wrapper">
          <a href="logout" class="login-join" id="loginOpen">로그아웃</a>
        </div>
      </div>
    </div>
  </div>

</header>
