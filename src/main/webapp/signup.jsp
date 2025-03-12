<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
    background: linear-gradient(to bottom, #00008B, #0A192F); /* Dark Blue Gradient */
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
        }

        .signup-container {
            background-color: #fff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #007BFF; /* Blue Color */
            margin-bottom: 15px;
            font-size: 1.8em;
        }

        h3 {
            color: #4682B4; /* Steel Blue - a darker blue */
            margin-top: 12px;
            margin-bottom: 8px;
            font-size: 1.2em;
        }

        label {
            display: block;
            margin-bottom: 3px;
            color: #555;
            text-align: left;
            font-size: 0.95em;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        select {
            appearance: none;
            background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8' viewBox='0 0 12 8'%3E%3Cpath fill='%23007BFF' d='M1.59 0.37l4.41 5.26 4.41-5.26c0.61 0.38 0.61 1.02 0 1.4l-5 6c-0.3 0.38-0.9 0.38-1.2 0l-5-6c-0.6-0.38-0.6-1.02 0-1.4z'/%3E%3C/svg%3E") no-repeat right 8px center;
            background-size: 10px;
            padding-right: 25px;
        }

        input[type="submit"] {
            background: linear-gradient(to bottom, #00008B, #0A192F); /* Dark Blue Gradient */
    color: #fff;
    padding: 10px 18px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    transition: background 0.3s ease;
    width: 100%;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to bottom, #000055, #000000); /* Darker Blue Gradient */
        }

        .form-section {
            margin-top: 15px;
            padding: 12px;
            border: 1px solid #eee;
            border-radius: 4px;
            text-align: left;
        }

        br {
            display: none;
        }

        .login-link a {
            color: #007BFF; /* Blue Color */
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function showForm() {
            var role = document.getElementById("roleSelect").value;

            // Get form sections
            var adminForm = document.getElementById("adminForm");
            var customerForm = document.getElementById("customerForm");
            var driverForm = document.getElementById("driverForm");

            // Get input fields in each section
            var adminInputs = adminForm.querySelectorAll("input");
            var customerInputs = customerForm.querySelectorAll("input");
            var driverInputs = driverForm.querySelectorAll("input");

            // Hide all sections and disable their inputs so they won't trigger HTML5 validation
            adminForm.style.display = "none";
            customerForm.style.display = "none";
            driverForm.style.display = "none";
            adminInputs.forEach(function(input) { input.disabled = true; });
            customerInputs.forEach(function(input) { input.disabled = true; });
            driverInputs.forEach(function(input) { input.disabled = true; });

            // Show the relevant section and enable its inputs
            if (role === "admin") {
                adminForm.style.display = "block";
                adminInputs.forEach(function(input) { input.disabled = false; });
            } else if (role === "customer") {
                customerForm.style.display = "block";
                customerInputs.forEach(function(input) { input.disabled = false; });
            } else if (role === "driver") {
                driverForm.style.display = "block";
                driverInputs.forEach(function(input) { input.disabled = false; });
            }
        }
    </script>
</head>
<body onload="showForm();">
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="SignUpServlet" method="post">
            <label for="roleSelect">Select Role:</label>
            <select name="role" id="roleSelect" onchange="showForm();">
                <option value="admin">Admin</option>
                <option value="customer">Customer</option>
                <option value="driver">Driver</option>
            </select>

            <!-- Admin Sign Up Section -->
            <div id="adminForm" class="form-section" style="display:none;">
                <h3>Admin Sign Up</h3>
                <label for="adminUsername">Username:</label>
                <input type="text" id="adminUsername" name="adminUsername" required /><br/>
                <label for="adminPassword">Password:</label>
                <input type="password" id="adminPassword" name="adminPassword" required /><br/>
            </div>

            <!-- Customer Sign Up Section -->
            <div id="customerForm" class="form-section" style="display:none;">
                <h3>Customer Sign Up</h3>
                <label for="customerName">Name:</label>
                <input type="text" id="customerName" name="customerName" required /><br/>
                <label for="customerAddress">Address:</label>
                <input type="text" id="customerAddress" name="customerAddress" required /><br/>
                <label for="customerNIC">NIC:</label>
                <input type="text" id="customerNIC" name="customerNIC" required /><br/>
                <label for="customerContact">Contact Number:</label>
                <input type="text" id="customerContact" name="customerContact" required /><br/>
                <label for="customerUsername">Username:</label>
                <input type="text" id="customerUsername" name="customerUsername" required /><br/>
                <label for="customerPassword">Password:</label>
                <input type="password" id="customerPassword" name="customerPassword" required /><br/>
            </div>

            <!-- Driver Sign Up Section -->
            <div id="driverForm" class="form-section" style="display:none;">
                <h3>Driver Sign Up</h3>
                <label for="driverName">Name:</label>
                <input type="text" id="driverName" name="driverName" required /><br/>
                <label for="driverContact">Contact Number:</label>
                <input type="text" id="driverContact" name="driverContact" required /><br/>
                <label for="driverNIC">NIC:</label>
                <input type="text" id="driverNIC" name="driverNIC" required /><br/>
                <label for="driverUsername">Username:</label>
                <input type="text" id="driverUsername" name="driverUsername" required /><br/>
                <label for="driverPassword">Password:</label>
                <input type="password" id="driverPassword" name="driverPassword" required /><br/>
            </div>

            <input type="submit" value="Sign Up" />
        </form>
        <div class="login-link">
            Do you have an account? <a href="login.jsp">login</a>
        </div>
    </div>
</body>
</html>