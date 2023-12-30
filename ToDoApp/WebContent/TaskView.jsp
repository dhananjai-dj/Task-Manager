<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Achievements To Do</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #3498db, #2ecc71);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        	background-image: url('images/Bg.png') ;
        	background-repeat: no-repeat;
        	background-size: cover;

        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            overflow: hidden;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #fc9003;
            color: #fff;
            position: sticky;
            top: 0;
            z-index: 2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        form {
            display: block;
            text-align: center;
            margin-top: 10px;
        }

        #delete {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 4px;
            transition: background 0.3s;
        }

        #delete:hover {
            background-color: #c82333;
        }

        #addTask, #logout {
            background-color: #fc9003;
            color: #fff;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 4px;
            transition: background 0.3s;
            margin-top: 10px;
        }

        #addTask:hover, #logout:hover {
            background-color: #0056b3; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <sql:setDataSource
        var="db"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost/jsp_servlet"
        user="root"
        password="dhananjai"
    />
     <% 
     int userId = 0;
     if (session.getAttribute("userId") == null || !(session.getAttribute("userId") instanceof Integer)) {
        response.sendRedirect("LoginToDo.jsp");
    } else {
        userId = (int) session.getAttribute("userId");
    }
     %>
    <sql:query var="select" dataSource="${db}">
        select * from task where user_id = <%= userId %>;
    </sql:query>

    <table id="TaskTable">
        <thead>
            <tr>
                <th>Task Name</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Priority</th>
                <th>Difficulty</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="task" items="${select.rows}">
                <tr>
                    <td><c:out value="${task.task_name}"></c:out></td>
                    <td><c:out value="${task.start_date}"></c:out></td>
                    <td><c:out value="${task.end_date}"></c:out></td>
                    <td><c:out value="${task.priority}"></c:out></td>
                    <td><c:out value="${task.difficulty}"></c:out></td>
                   
                    <td>
                        <form id="deleteForm" action="ToDoController2.jsp" method="post">
                            <input type="hidden" name="action" value="delete"/>
                            <input type="hidden" name="taskId" value="${task.task_id}"/> 
                            <input type="submit" value="Delete" id="delete"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <form id="addTaskForm" action="AddTask.jsp">
        <input type="submit" value="Add Task" id="addTask"/>
    </form>
    <form id="logoutForm" action="LogoutServlet">
        <input type="submit" value="Logout" id="logout"/>
    </form>
</body>
</html>
