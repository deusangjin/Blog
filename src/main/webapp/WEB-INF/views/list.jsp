<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
  <%@ include file="header.jsp" %>
  <div class="container text-center">
					<table class="table table-hover" >
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
								</tr>
							</thead>
                <tr>
                  <td><a href="detail">리스트를</a></td>
                  <td>여기다가</td>
                  <td>뿌려</td>
                </tr>
              <tbody>
                  <!-- 리스트 for문 값셋팅 -->
              </tbody>
          </table>
          <a href="insert"><input type="button" value="글쓰기"></a>
  </div>

</body>
</html>