<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

  .loginPopup{ display: none; position: fixed; left: 50%; top: 50%; z-index:100;  padding: 52px 60px 60px; width: 500px;
  height: 400px; transform: translate(-50%,-50%); border: 1px solid black; box-sizing: border-box; background: #fff;
    }
    .loginPopup h2{ padding: 0 0 12px; border-bottom: 3px solid #444; font-weight: normal; font-size: 36px; color:#222; text-align: center;
        line-height: 100% }
    .loginPopup .loginClose{ position: absolute; right: 20px; top: 20px; width: 32px; height: 41px;
    /*background: url(#) no-repeat; color: transparent; */ }
    
    .loginPopup .loginCon { padding:  14px 34px; border-bottom: 1px solid #e8e8e8; margin: auto;}
    
   
  
    .loginDim{
         display: none; position:fixed; left: 0; top: 0; width: 100%; z-index: 99; height: 100%; background: rgba(0,0,0,0.5);
    }
    #btn-login{
        float: right;
        margin-top: 30px;
    }
    table.login {
    text-align: center;
    margin: auto;
}
    
    table.login td,
    table.login th { padding: 0 0 20px;}
    table.login th { padding-top: 15px; font-size: 14px; color: #222; text-align: left; font-weight: normal; vertical-align: top; }
    table.login tr:last-child th,
    table.login tr:last-child td { padding: 0 0 30px; }
</style>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script>
//로그인
$(function(){
	$(".loginPopup").show();
	$(".loginDim").show();
	
  $(".loginClose").click(function(){
  	$(this).parent().hide();
  	$(".loginDim").hide();
  });
});

$(document).ready(function(){
	$("#btn-login").click(function(){
		$.ajax({
			type:"post",
			url:"login",
			data:{"id":$("#id").val(),"pwd":$("#pwd").val()},
			success : function(data){
				alert(data);
				if(data.trim()=="1"){
					alert("${id}회원 로그인");
					location.href="login";
				}else if(data.trim=="2"){
					alert("회원이 아닙니다.");
					$("#id").focus();
				}
				else if(data.trim=="0"){
					alert("비밀번호 입력하세요");
				}
			}
		});
	})
	
});
</script>
</head>
<body>
<%@include file="mainView.jsp"%>
<div class="loginPopup">
    <h2>로그인</h2>
    <div class="loginCon">
    <table class="login">
      <tbody>
        <tr>
          <th><label for="">ID</label></th>
          <td><input type="text" name="id" placeholder="아이디를 입력하세요!" id="id" class="form-control"></td>
        </tr>
        <tr>
          <th><label for="">PW</label></th>
          <td><input type="password" name="pwd" placeholder="비밀번호를 입력해주세요!" id="pwd" class="form-control"></td>
        </tr>
      </tbody>
    </table>
    
    </div>
    <input type="button" class="btn btn btn-danger btn-round" id="btn-login" value="확인">
    <a href="#a" class="loginClose"><img src="imges/BtnX.png"></a>
  </div>
  <div class="loginDim"></div>
</body>
</html>