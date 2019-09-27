<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

  <script>
    $(document).ready(function() {
         $('#summernote').summernote({
        placeholder: 'content',
          minHeight: 400,
          maxHeight: null,
          focus: true, 
          lang : 'ko-KR'
         })
         
         $("#subBtn").on("click",function(){
        	 $("#frmInsert").submit();
         })
     });
  </script>

  <div style="width: 60%; margin: auto;">
    <h2 style="text-align: center;">글 작성</h2>
    
    <form method="get" action="insert" id="frmInsert">
    
      <select name="subject" id="subject">
        <option>안드로이드</option>
        <option>JAVA</option>
        <option>DB</option>
        <option>SPRING</option>
        <option>JSP</option>
      </select>
      <input type="hidden" name="id" style="width: 20%;" value="${id }" placeholder="id" /><br> 
       <input type="text" name="title" style="width: 40%;" placeholder="제목" /> <br>
      <br>
      <textarea id="summernote" name="content"></textarea>
      <input id="subBtn" type="button" value="글 작성" style="float: right;"  />
    </form>
  </div>
