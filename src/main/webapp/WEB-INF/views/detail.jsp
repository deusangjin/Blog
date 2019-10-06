<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
img{
		width: 80%;
		height: 80%;
}
</style>
<table class="table table-hover table-bordered">
  <tbody>
    <tr>
      <th scope="row">글 번호${num }</th>
      <td>${bb.num }</td>
      <th scope="row">조회수</th>
      <td></td>
    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td>${bb.id }</td>
      <th scope="row">작성시간</th>
      <td>${bb.cal }</td>
    </tr>
    <tr>
      <th scope="row">제목</th>
      <td colspan="3">${bb.title }</td>
    </tr>
    <tr>
      <td colspan="4" style="border: 1px solid #ccc; height: 100px;">${bb.content }</td>
    </tr>
  </tbody>
</table>
  <div>
  <input type="button" value="수정" onclick="update('${num}')" >
  <input type="button" value="삭제" id = "removeBtn" onclick="remove('${num}')">
  </div>
  
