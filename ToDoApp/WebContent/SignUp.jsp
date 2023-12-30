<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Signup</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #3498db, #6cb2eb);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
        	background-image: url('images/bg2.jpg') ;
        	background-repeat: no-repeat;
        	background-size: cover;
        }

        form {
        	margin-top: 400px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            max-width: 100%;
        }

        h1 {
            color: #3498db;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-size: 16px;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 14px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #3498db;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            padding: 14px;
            border: none;
            border-radius: 4px;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        p {
            margin-top: 20px;
            font-size: 14px;
            color: #000000;
        }

        p a {
            color: #1d4b8f; 
   			text-decoration: none;
    		font-weight: bold;
        }

        p a:hover {
            text-decoration: underline;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 600px) {
            form {
                padding: 20px;
            }

            input {
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <form id="signupForm" action="SignUpServlet" method="post" autocomplete="off">
        <h1>Sign Up</h1>
        
        <label for="firstName">First Name:</label>
        <input id="firstName" type="text" name="firstName" placeholder="Enter your first name" required/>

        <label for="lastName">Last Name:</label>
        <input id="lastName" type="text" name="lastName" placeholder="Enter your last name" required/>

        <label for="email">Email:</label>
        <input id="email" type="email" name="email" placeholder="Enter your email" required/>

        <label for="mobileNumber">Mobile Number:</label>
        <input id="mobileNumber" type="tel" name="mobileNumber" placeholder="Enter your mobile number" required/>

        <label for="address">Address:</label>
        <input id="address" type="text" name="address" placeholder="Enter your address" required/>

        <label for="username">Username:</label>
        <input id="username" type="text" name="username" placeholder="Choose a username" required/>

        <label for="password">Password:</label>
        <input id="password" type="password" name="password" placeholder="Choose a password" required/>

        <input type="submit" value="Sign Up"/>
    </form>
    
    <p>Already have an account? <a href="LoginToDo.jsp">Login</a></p>
</body>
</html>
