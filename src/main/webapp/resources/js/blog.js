/**
 * 
 */	

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





$(function(){
		$("#join").on('click',function(){

			location.href="join";
		});
		$("#login").on("click",function(){
			$("#frm").submit();
		})
	})
	
	
	