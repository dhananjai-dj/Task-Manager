<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Insertion</title>
	</head>
	<body>
	    <%
	        String name = request.getParameter("name");
	        String startDate = request.getParameter("startDate");
	        String endDate = request.getParameter("endDate");
	        String difficulty = request.getParameter("difficulty");
	        int user_id = (int) session.getAttribute("userId");
	        int priority = (int) session.getAttribute("priority"); 
	    %>
	
	    <sql:setDataSource 
	        var="db" 
	        driver="com.mysql.cj.jdbc.Driver" 
	        url="jdbc:mysql://localhost/jsp_servlet" 
	        user="root" 
	        password="dhananjai" 
	    />
	
	    <sql:update var="insert" dataSource="${db}">
	        INSERT INTO task (task_name, start_date, end_date, difficulty, user_id, priority)
	        VALUES("<%= name %>","<%= startDate %>","<%= endDate %>","<%= difficulty %>",<%= user_id %>,<%= priority %>) 
	    </sql:update>
	    
		<%
	    response.sendRedirect("TaskView.jsp");
	    %>
	</body>
</html>
