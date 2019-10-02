/**
 * 
 */

	
	function Search(word,subject){
		if (word == "") {
				return false;
			} 
			getSearch(1,word,subject);
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
	function SubjectInsert(subject){
		$.ajax({
			type : "get",
			url : "SubjectInsert",
			data:{"subject":subject},				
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
	
	function getView(num){
		$.ajax({
	  	type:"post",
	  	url:"SubjectView",
	  	data:{"num" : num},
	  	success : function(data){
	  		$("#detailView").html(data);
	  	}
	  });
	}
	
	function getView1(num){
		
	}

	