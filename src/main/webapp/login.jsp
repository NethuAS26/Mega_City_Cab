<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #00008B, #0A192F); /* Dark Blue Gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h2 {
            color: #007BFF; /* Blue Color */
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            text-align: left;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        select {
            appearance: none;
            background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8' viewBox='0 0 12 8'%3E%3Cpath fill='%23007BFF' d='M1.59 0.37l4.41 5.26 4.41-5.26c0.61 0.38 0.61 1.02 0 1.4l-5 6c-0.3 0.38-0.9 0.38-1.2 0l-5-6c-0.6-0.38-0.6-1.02 0-1.4z'/%3E%3C/svg%3E") no-repeat right 10px center;
            background-size: 12px;
            padding-right: 30px;
        }

        input[type="submit"] {
            background: linear-gradient(to bottom, #00008B, #0A192F); /* Dark Blue Gradient */
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
          background: linear-gradient(to bottom, #000055, #000000); /* Darker Blue Gradient */
        }

        .signup-link {
            margin-top: 15px;
            font-size: 14px;
        }

        .signup-link a {
            color: #007BFF; /* Blue Color */
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label for="roleSelect">Select Role:</label>
            <select name="role" id="roleSelect">
                <option value="admin">Admin</option>
                <option value="customer">Customer</option>
                <option value="driver">Driver</option>
            </select>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required />
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />
            <input type="submit" value="Login" />
        </form>
        <div class="signup-link">
            Don't have an account? <a href="signup.jsp">Sign Up</a>
        </div>
    </div>
</body>
</html>