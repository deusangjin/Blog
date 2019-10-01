/**
 * 
 */

	
	function Search(word){
		if ($("#word").val() == "") {
				alert("검색어를 입력하세요.");
				return false;
			} 
			getSearch(1, $("#word").val());
	}
	
	function Insert(){
		$.ajax({
  			type : "get",
  			url : "insert",
  			success : function(data){
  				$("#view").html(data);
  			}
  		})
	}
	
	function getSearch(pageNum, word,subject) {
		$.ajax({
			type : "post",
			url : "list",
			data : {
				"pageNum" : pageNum,
				"word" : word,
				"id" : $("#id").val(),
				"subject" : subject
				},
			success : function(data){
				$("#area").html(data);
			}
		})
	} 