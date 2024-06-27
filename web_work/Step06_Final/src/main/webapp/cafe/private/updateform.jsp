<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	CafeDto dto = CafeDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cafe/private/updateform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action="update.jsp" method="post">
		<h3>회원 정보 수정 양식</h3>
			<table class="table table-bordered">
				<tr>
					<th>글번호</th>
					<td><%=dto.getNum() %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=dto.getWriter() %></td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" id="title" value="<%=dto.getTitle() %>"/>
					</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td><%=dto.getViewCount() %></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><%=dto.getRegdate() %></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="text" id="content" value="<%=dto.getContent()%>"
								style="width:600px; height:500px;"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>