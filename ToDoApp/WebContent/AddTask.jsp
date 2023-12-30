<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #3498db, #2ecc71);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            margin-top: 100px;
        }

        h2 {
            color: #2ecc71;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 15px 0 8px;
            color: #333;
            font-size: 14px;
            font-weight: bold;
        }

        input, select {
            width: calc(100% - 24px);
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #3498db;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        select {
            cursor: pointer;
        }

        input[type="submit"] {
            background: #2ecc71;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }

        input[type="submit"]:hover {
            background: #27ae60;
        }
    </style>
</head>
<body>
	<%
	
	session.setAttribute("userId", session.getAttribute("userId")); 
	
	%>
    <form id="Activity" action="ToDoController1.jsp" autocomplete="off">
        <h2>Enter the Details</h2>
        <label for="task">Task</label>
        <input id="task" placeholder="Enter the Task Name" type="text" name="name"/>

        <label for="startDate">Select Start Date</label>
        <input id="startDate" type="date" name="startDate" min=""/>

        <label for="endDate">Select End Date</label>
        <input id="endDate" type="date" name="endDate"/>

		  <label for="priority">Set Priority 1-10</label>
          <input id="priority" type="number" name="priority" min="1" max="10" placeholder ="minimum = 10 maximum = 1"/>
        
        <label for="difficulty">Difficulty</label>
        <select name="difficulty" id="difficulty" name="difficulty">
            <option>-select-</option>
            <option value="easy">Easy</option>
            <option value="medium">Medium</option>
            <option value="hard">Hard</option>
        </select>

        <input type="submit" value="Submit" id="submit"/>
    </form>
    <script>
    	var today = new Date().toISOString().split('T')[0];
    	document.getElementById('startDate').min = today;
	</script>

</body>
</html>
