<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .popup{ display: none; position: fixed; left: 50%; top: 50%; z-index:100;  padding: 52px 60px 60px; width: 600px;
  height: 740px; transform: translate(-50%,-50%); border: 1px solid black; box-sizing: border-box; background: #fff;
    }
    .popup h2{ padding: 0 0 5px; border-bottom: 3px solid #444; font-weight: normal; font-size: 36px; color:#222; text-align: center;
        line-height: 100% }
    .popup .joinCloseBtn{ position: absolute; right: 40px; top: 40px; width: 41px; height: 41px;
    background-image: url("../img/BtnX.png")  no-repeat; color: transparent; }
    
    .popup .con {padding:  14px 34px; border-bottom: 1px solid #e8e8e8; margin: auto;}
    
   #newMemberBtn{
           float: right;
        margin-top: 10px;
    }
  
    .dim{
         display: none; position:fixed; left: 0; top: 0; width: 100%; z-index: 99; height: 100%; background: rgba(0,0,0,0.5);
    }
 
    table.type1 {
    text-align: center;
    margin: auto;
}
    table.type1 td,
    table.type1 th { padding: 0 0 5px;}
    table.type1 th { padding-top: 20px; font-size: 14px; color: #222; text-align: left; font-weight: normal; vertical-align: top; }
    table.type1 tr:last-child th,
    table.type1 tr:last-child td { padding: 0 0 0px; }
  
</style>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script>
$(function(){
	$(".popup").show();
	$(".dim").show();
	
  $(".popup .joinCloseBtn").on('click',function(){
    $(this).parent().hide();
    $(".dim").hide();
	});
});


$(document).ready(function(){
	$("#memberInsert").click(function(){
		if($("#userid").val()==""){
			alert("아이디를 입력해주세요!");
			$("#userid").focus();
			return false;
		}
		if($("#pwd").val()==""){
			alert("비밀번호를 입력해주세요!");
			$("#pwd").focus();
			return false;
		} 
		if($("#pwd_check").val()==""){
			alert("비밀번호를 한번 더 입력해주세요!");
			$("#pwd_check").focus();
			return false;
		} 
		if($("#name").val()==""){
			alert("이름을 입력해주세요!");
			$("#name").focus();
			return false;
		}
		$("#frmJoin").submit();
	});
});
</script>

</head>
<body>
<%@include file="mainView.jsp" %>

<div class="popup">
    <h2>회원가입</h2>
    <div class="con">
    
    <form action="join" method="POST" id="frmJoin" > 
     <input type="hidden" name="uid" id="uid">
    <table class="type1">
      <caption>
        <datalist>
          <summary>회원가입 폼</summary>
        </datalist>
      </caption>
      
      <tbody>
        <tr>
          <th><label for="">ID</label></th>
          <td><input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요!"></td>
        </tr>
        <tr>
          <th><label for="">PW</label></th>
          <td><input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요!"></td>
        </tr>
        <tr>
          <th><label for="">NAME</label></th>
          <td><input type="text" name="name" id="name" class="form-control"></td>
        </tr>
        <tr>
          <th><label for="">GENDER</label></th>
          <td><input type="radio" name="gender" checked="checked" value="남">남
            <input type="radio" name="gender"  value="여">여
          </td>
        </tr>
      </tbody>
    </table>
    
    </form>
    </div>
    <input type="button" class="btn  btn-danger btn-round" id="memberInsert" value="확인">
    <a href="#a" class="joinCloseBtn"><img src="imges/BtnX.png"></a>
  </div>
  <div class="dim"></div>
</body>
</html>