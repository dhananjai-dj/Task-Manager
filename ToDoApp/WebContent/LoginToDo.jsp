<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #3498db, #6cb2eb);
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
            color: #333;
            font-size: 16px;
            font-weight: bold;
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
            color: #555;
        }

        p a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }

        p a:hover {
            text-decoration: underline;
        }
        body{
        	background-image: url('images/bg1.jpg') ;
        	background-repeat: no-repeat;
        	background-size: cover;
        }
    </style>
    <title>Welcome</title>
</head>
<body>
    <form id="loginForm" action="LoginServlet" method="post" autocomplete="off">
        <h1>Welcome Back!</h1>
        
        <label for="name">Username:</label>
        <input id="name" type="text" name="name" placeholder="Enter your username" required/>

        <label for="password">Password:</label>
        <input id="password" type="password" name="password" placeholder="Enter your password" required/>

        <input type="submit" value="Login"/>

        <p>Don't have an account? <a href="SignUp.jsp">Sign up now</a>.</p>
    </form>
    
</body>
</html>
