<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String realPath = application.getRealPath("/upload");
	File f = new File(realPath);
	if(!f.exists()){
		f.mkdir();
	}
	
	MultipartRequest mr = new MultipartRequest(request, 
			realPath, 
			1024*1024*100, 
			"utf-8", 
			new DefaultFileRenamePolicy());
	String title = mr.getParameter("title");
	String orgFileName = mr.getOriginalFileName("myFile");
	String saveFileName = mr.getFilesystemName("myFile");
	long fileSize = mr.getFile("myFile").length();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fileup/upload.jsp</title>
</head>
<body>

</body>
</html>