<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MemberDao dao = new MemberDao();
	List<MemberDto> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/lits.jsp</title>
</head>
<body>
	<a href="insertform.jsp">회원 추가</a>
	<a href="${pageContext.request.contextPath }/insertform.jsp">회원추가</a>
	<h3>회원 목록 입니다.</h3>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>삭제</th>
				<th>수정</th>
			</tr>
		</thead>
		<tbody>

			<%for(MemberDto tmp : list) { %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
				<td><a href="${pageContext.request.contextPath }/member/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				<td><a href="${pageContext.request.contextPath }/member/update.jsp">수정</a></td>
			</tr>
			<%} %>

		</tbody>
	</table>
</body>
</html>