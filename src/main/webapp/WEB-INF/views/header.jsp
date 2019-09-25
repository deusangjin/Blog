<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="css/styles.css">
    <script src="js/all.js"></script>
    <!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- <script src="js/bolg.js"></script> -->

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

</style>

<header>
  <div class="container-fluid ">
    <div class="nav-wrapper" style="background-image: url('imges/ViewTest.jpg');">
      <div class="left-side">
        <div class="nav-link-wrapper active-nav-link a">
          <a href="index">HOME</a>
        </div>
      </div>
      <div class="center">
        <h1 class="text text-uppercase">
          <strong>blog</strong>
        </h1>
      </div>
      <div class="left-side">
        <!-- right-side는  아래로 배치
        left-side는 세로배치-->
        <div class="nav-link-wrapper">
          <a href="login" class="login-join" id="loginOpen">로그인</a>
        </div>
        <div class="nav-link-wrapper">
          <a href="join" class="login-join" id="open">회원가입</a>
        </div>
      </div>
    </div>
  </div>
  
<aside style="margin-top: 100px;">
    <div class="col-md-1">
      <!--   사이드 바 메뉴 -->
      <!--    패널 타이틀1 -->
      <div class="panel panel-info">
        <!--  사이드바 메뉴목록1 -->
        <ul class="list-group">
          <li class="list-group-item"><a href="list">임시1</a></li>
          <li class="list-group-item"><a href="#">임시2</a></li>
          <li class="list-group-item"><a href="#">임시3</a></li>
        </ul>
      </div>
    </div>
  </aside>
<!--   <aside style="margin-top: 100px;">

  </aside> -->
</header>
