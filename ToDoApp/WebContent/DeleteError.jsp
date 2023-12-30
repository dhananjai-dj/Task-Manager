<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error in Deleition</title>
</head>
<body>
<%
String id = (String)request.getAttribute("taskId");
if(id==null)
	out.println("null");
%>
${id}
</body>
</html>