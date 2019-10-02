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
      <c:forEach items="${list}" var="list" varStatus="status">
        <tr>
          <td><input type= "button" onclick="javascript:getView(${list.num })">${boardNum+status.count}</td>
          <td>${list.subject}-${list.title}</td>
          <td>${list.id }</td>
          <td>${list.cal }</td>
        </tr>
      </c:forEach>
      <!-- 리스트 for문 값셋팅 -->
    </tbody>
  </table>

 
    <div style="text-align: center;">${pageHtml} </div>
     <br>