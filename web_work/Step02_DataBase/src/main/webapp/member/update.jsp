<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
	<form action="update2.jsp" method = "get">
		번호<input type="text" name = "num" placeholder="num"/>
		이름<input type="text" name = "name" placeholder="name"/>
		주소<input type="text" name = "addr" placeholder="addr"/>
		<button type="submit">수정</button>
	</form>
</body>
</html>
