/**
 * 
 */

	
	function Search(word,subject){
		if (word == "") {
			alert("검색어를 입력하세요");
				return false;
			} 
			getSearch(1,word,subject);
	}
	
	function Insert(){
		$("#detailView").html("");
		$.ajax({
  			type : "get",
  			url : "insert",
  			data:{"num" : $("#num").val()},
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
	
	function getSubjectViewSearch(pageNum, word,subject) {
		$.ajax({
			type : "post",
			url : "SubjectList",
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
	
	
	function getSubejectView(subject){
		$.ajax({
			type : "get",
			url : "SubjectList",
			data : {
				"subject" : subject
			},
			success : function(data) {
				$("#view").html(data);
				$("#titleSubject").html("<h1 class='major' id='hsubject'>"+subject+"</h1>");
			}
		});
	}
	
	function getView(num){	
		$.ajax({
	  	type:"post",
	  	url:"detail",
	  	data:{"num" : num},
	  	async:false,
	  	success : function(data){
	  		$("#detailView").html(data);
	  	},
	  	error:function(e){
	  		alert(e);
	  	}
	  });
	}
	
	function getView1(subject,num){
		location.href="SubjectView?subject="+subject+"&num="+num;
	}


	function remove(num){
		$.ajax({
	  	type:"get",
	  	url:"remove",
	  	data : {"num" : num},
	  	success : function(data){
	  		getSubejectView($("#subject").val());
	  		$("#detailView").html("");
	  	}
	  });
	 }



	