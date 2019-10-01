<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<style>
.container {
	margin-top: 100px;
}
</style>
<script>
	$(document).ready(function() {

		$("#subBtn").on("click", function() {
			$("#frmInsert").submit();
		})
	});
</script>

<div class="container ">
	<div style="width: 60%; margin: auto;">
		<h2 style="text-align: center;">글 작성</h2>

		<form method="post" action="insert" id="frmInsert">

			<select name="subject" id="subject">
				<option>안드로이드</option>
				<option>JAVA</option>
				<option>DB</option>
				<option>SPRING</option>
				<option>JSP</option>
			</select> <input type="hidden" name="id" style="width: 20%;" value="${id }"
				placeholder="id" /><br>
				 <input type="text" name="title" style="width: 40%;" placeholder="제목" /> <br> <br>
			<textarea id="summernote" name="content"></textarea>
			<input id="subBtn" type="button" value="글 작성" style="float: right;" />
		</form>
	</div>
</div>
