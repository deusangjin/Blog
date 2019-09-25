<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
<head>

      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
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
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/menu.png");
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
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/close.png");
  background-size: 50%;
  background-repeat: no-repeat;
  background-position: center;
  cursor: pointer;
}

#menu {
  width: 10%;
  height: 100%;
  position: absolute;
  top: 0px;
  left:-352px;
  z-index: 10;
  border: 1px solid #c9c9c9;
  background-color: white;
  transition: All 0.2s ease;
  -webkit-transition: All 0.2s ease;
  -moz-transition: All 0.2s ease;
  -o-transition: All 0.2s ease;

}
#menu.open {
    left: 0px;
}
#menu.open a{
    color: red;
    left: 25%;
    position: absolute;
    top: 40%;
}    
    

.page_cover.open {
  display: block;
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

</head>
<body>
<div class="slideBtn">
</div>
<div onclick="history.back();" class="page_cover"></div>
<div id="menu">
 <a href="list"> 카테고리1번</a>

  <div onclick="history.back();" class="close"></div>
</div>
<script>
$(".slideBtn").click(function() {
  $("#menu,.page_cover,html").addClass("open");
  window.location.hash = "#open";
});

window.onhashchange = function() {
  if (location.hash != "#open") {
    $("#menu,.page_cover,html").removeClass("open");
  }
};
</script>
</body>
</html>
