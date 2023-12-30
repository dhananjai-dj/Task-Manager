<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="DeleteError.jsp" %>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deletion Occurs</title>
</head>
<body>

<%
String id = request.getParameter("taskId");
if(id == null){
	response.sendRedirect("DeleteError.jsp");
}
%>
 <sql:setDataSource 
        var="db" 
        driver="com.mysql.cj.jdbc.Driver" 
        url="jdbc:mysql://localhost/jsp_servlet" 
        user="root" 
        password="dhananjai" 
    />

   <sql:update var="delete" dataSource="${db}">
   DELETE FROM task WHERE task_id = <%= id %> ;
   </sql:update>
	<%
	response.sendRedirect("TaskView.jsp");
	%>
</body>
</html>