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
	<h3>회원 목록 입니다.</h3>
	<table>
		<thead>
			<tr>번호</tr>
			<tr>이름</tr>
			<tr>주소</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list) { %>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
			<%} %>
		</tbody>
	</table>
</body>
</html>