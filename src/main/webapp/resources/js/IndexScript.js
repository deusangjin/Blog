/**
 * 
 */

	
	$(document).ready(function() {
 		getSearch(1,"");
 		
   	$("#btnSearch").on("click", function() {
  			if ($("#word").val() == "") {
  				alert("검색어를 입력하세요.");
  				return false;
  			} 
  			getSearch(1, $("#word").val());
  		});
   	
   	$("#insertBtn").on("click",function(){
   		$.ajax({
  			type : "post",
  			url : "insert",
  			success : function(data){
  				$("#view").html(data);
  			}
  		})
   	})
   	
   	
	})
	
/*	function category(subject){
		$.ajax({
			type: "post",
			url : "list",
			data : {"subject" :subject},
			success : function(data){
				$("#view").html(data);
			}
		})
	}*/
	function getSearch(pageNum, word) {
		$.post("list", {
			"pageNum" : pageNum,
			"word" : word,
			"id" : $("#id").val(),

		}, function(data) {
			$("#area").html(data);
		});
	} 
	