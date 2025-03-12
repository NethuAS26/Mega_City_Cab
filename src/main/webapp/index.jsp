<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Mega City Cabs</title>
    <style>
        /* Reset margins and padding */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        /* Set the background image */
        body {
            background: url("cover.jpg") no-repeat center center;
            background-size: cover;
            font-family: Arial, sans-serif;
        }

        /* Container for the buttons */
        .header-buttons {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        /* Fancy button styles */
        .header-buttons a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background: linear-gradient(to right, #ff416c, #ff4b2b); /* Change gradient colors as desired */
            padding: 12px 24px;
            margin-left: 10px;
            border-radius: 25px;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(255, 65, 108, 0.4);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer; /* Makes cursor a pointer on hover */
        }

        .header-buttons a:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 14px rgba(255, 65, 108, 0.6);
        }
    </style>
</head>
<body>
    <div class="header-buttons">
        <!-- Link to login.jsp -->
        <a href="login.jsp">Log In</a>
        <!-- Link to signup.jsp -->
        <a href="signup.jsp">Sign Up</a>
    </div>
</body>
</html>