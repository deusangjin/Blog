<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

$(document).ready(function() {
	$.ajax({
	type:"post",
	url:"detail",
	data:{"num" : num},
	success : function(data){
		alert(data);
		$("#dView").html(data);
	}
});
})
</script>

<div id = "dView">

</div>
