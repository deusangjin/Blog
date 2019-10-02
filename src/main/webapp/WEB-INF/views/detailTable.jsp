<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <table class="table table-hover table-bordered">
  <thead>
    <tr>
      <th style="width: 80px;">번호</th>
      <th style="text-align: center;">제목</th>
      <th style="width: 150px;">작성자</th>
      <th style="width: 150px;">날짜</th>
    </tr>
  </thead>
  <tbody>
      <tr>
        <td>${bb.num }</td>
        <td>${bb.content }</td>
        <td>${bb.id }</td>
        <td>123</td>
      </tr>
    <!-- 리스트 for문 값셋팅 -->
  </tbody>
</table>