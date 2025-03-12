<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        /* Color Palette */
        :root {
            --color-lightest-blue: #EFF3FF;
            --color-lighter-blue: #C6DBEF;
            --color-light-blue: #9ECAE1;
            --color-medium-blue: #6BAED5;
            --color-dark-blue: #3182BD;
            --color-darkest-blue: #08519C;
        }

        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            /* background-image: url('cover.jpg');  Add your image path here */
            background: linear-gradient(to bottom, #00008B, #0A192F); /* Dark Blue Gradient */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: var(--color-darkest-blue);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Header Styles */
        .dashboard-header {
            background-color: var(--color-darkest-blue);
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 0 0 10px 10px;
            margin-bottom: 30px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .dashboard-header h2 {
            margin-bottom: 0;
        }

        /* Sign Out Button */
        .sign-out-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: var(--color-medium-blue);
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            color: white;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .sign-out-btn:hover {
            background-color: var(--color-dark-blue);
        }

        /* Container Styles */
        .container {
            background-color: rgba( 0.9); 
            border-radius: 10px;
            padding: 30px;
            margin-top: 30px;
            margin-bottom: 30px;
            flex-grow: 1;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            color:white; /* set the text color of the container to white so text appears  */
        }

        /* Data Card Styles */
        .data-card {
            background-color: var(--color-lightest-blue);
            color: var(--color-darkest-blue);
            border-radius: 70px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .data-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .data-card i {
            font-size: 3em;
            margin-bottom: 10px;
            color: var(--color-medium-blue);
        }

        .data-card h2 {
            font-size: 2.5em;
            font-weight: bold;
        }

        .data-card p {
            font-size: 1.1em;
            color: var(--color-dark-blue);
        }

        .data-card .btn {
            margin-top: 15px;
            background-color: var(--color-dark-blue);
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            color: white;
            transition: background-color 0.3s ease;
        }

        .data-card .btn:hover {
            background-color: var(--color-darkest-blue);
        }

        /* Form Card Styles */
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-bottom: 20px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            padding: 20px;
            background-color: rgba(255,255,255,0.8);/* set the card body to have a semi trasparent white color */
            color:black;  /* set the text color of the card body to black*/
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 15px;
            color: var(--color-darkest-blue);
        }

        /* Form Styles */
        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: var(--color-dark-blue);
        }

        input[type="text"],
        input[type="number"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-top: 5px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            color:black;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: var(--color-medium-blue);
            box-shadow: 0 0 0 0.2rem rgba(107, 174, 213, 0.25);
        }

        .btn-primary {
            background-color: var(--color-medium-blue);
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            color: white;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: var(--color-dark-blue);
        }

        .btn-success {
            background-color: var(--color-medium-blue);
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            color: white;
            transition: background-color 0.3s ease;
        }

        .btn-success:hover {
            background-color: var(--color-dark-blue);
        }

        /* Footer (Optional) */
        footer {
            background-color: var(--color-darkest-blue);
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            border-radius: 10px 10px 0 0;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

    <!-- Header with sign-out button -->
    <div class="dashboard-header">
        <h2><i class="fas fa-tachometer-alt"></i> Admin Dashboard</h2>
        <!-- Sign Out button linking to login.jsp -->
        <a href="login.jsp" class="sign-out-btn">Sign Out</a>
    </div>

    <div class="container">
        <!-- Row for the 3 data cards -->
        <div class="row">
            <!-- Total Bookings Card -->
            <div class="col-md-4">
                <div class="data-card">
                    <i class="fas fa-calendar-check"></i>
                    <p>Total Bookings</p>
                    <a href="ViewBookingsServlet" class="btn btn-primary">View Details</a>
                </div>
            </div>

            <!-- Active Drivers Card -->
            <div class="col-md-4">
                <div class="data-card">
                    <i class="fas fa-car"></i>
                    <p>Active Drivers</p>
                    <a href="ViewDriversServlet" class="btn btn-primary">View Details</a>
                </div>
            </div>

            <!-- Registered Customers Card -->
            <div class="col-md-4">
                <div class="data-card">
                    <i class="fas fa-users"></i>
                    <p>Registered Customers</p>
                    <a href="ViewCustomersServlet" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>

        <br/>

        <!-- Registration forms for Customer and Driver -->
        <div class="row">
            <!-- Register Customer -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title"><i class="fas fa-user-plus"></i> Register Customer</h3>
                        <form action="AdminRegisterServlet" method="post">
                            <div class="form-group">
                                <label for="customerName">Name:</label>
                                <input type="text" class="form-control" id="customerName" name="customerName"
                                       required placeholder="Enter customer name" />
                            </div>
                            <div class="form-group">
                                <label for="customerAddress">Address:</label>
                                <input type="text" class="form-control" id="customerAddress" name="customerAddress"
                                       required placeholder="Enter customer address" />
                            </div>
                            <div class="form-group">
                                <label for="customerNIC">NIC:</label>
                                <input type="text" class="form-control" id="customerNIC" name="customerNIC"
                                       required placeholder="Enter customer NIC" />
                            </div>
                            <div class="form-group">
                                <label for="customerContact">Contact:</label>
                                <input type="text" class="form-control" id="customerContact" name="customerContact"
                                       required placeholder="Enter customer contact" />
                            </div>
                            <div class="form-group">
                                <label for="customerUsername">Username:</label>
                                <input type="text" class="form-control" id="customerUsername" name="customerUsername"
                                       required placeholder="Enter username" />
                            </div>
                            <div class="form-group">
                                <label for="customerPassword">Password:</label>
                                <input type="password" class="form-control" id="customerPassword" name="customerPassword"
                                       required placeholder="Enter password" />
                            </div>
                            <input type="hidden" name="role" value="customer" />
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-user-plus"></i> Register Customer
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Register Driver -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title"><i class="fas fa-user-plus"></i> Register Driver</h3>
                        <form action="AdminRegisterServlet" method="post">
                            <div class="form-group">
                                <label for="driverName">Name:</label>
                                <input type="text" class="form-control" id="driverName" name="driverName"
                                       required placeholder="Enter driver name" />
                            </div>
                            <div class="form-group">
                                <label for="driverContact">Contact:</label>
                                <input type="text" class="form-control" id="driverContact" name="driverContact"
                                       required placeholder="Enter driver contact" />
                            </div>
                            <div class="form-group">
                                <label for="driverNIC">NIC:</label>
                                <input type="text" class="form-control" id="driverNIC" name="driverNIC"
                                       required placeholder="Enter driver NIC" />
                            </div>
                            <div class="form-group">
                                <label for="driverVehicle">Vehicle Number:</label>
                                <input type="text" class="form-control" id="driverVehicle" name="driverVehicle"
                                       required placeholder="Enter vehicle number" />
                            </div>
                            <div class="form-group">
                                <label for="driverUsername">Username:</label>
                                <input type="text" class="form-control" id="driverUsername" name="driverUsername"
                                       required placeholder="Enter username" />
                            </div>
                            <div class="form-group">
                                <label for="driverPassword">Password:</label>
                                <input type="password" class="form-control" id="driverPassword" name="driverPassword"
                                       required placeholder="Enter password" />
                            </div>
                            <input type="hidden" name="role" value="driver" />
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-user-plus"></i> Register Driver
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

                <!-- Section to update a fixed rate per KM -->
        <div class="row mt-4">
            <div class="col-md-12">
                <h3 class="mb-3" style="color: white;">Update Fixed Rate per KM</h3>
                <form action="UpdateRateServlet" method="post">
                    <div class="mb-3">
                        <label for="ratePerKm" class="form-label" style="color: white;">New Rate (LKR per KM):</label>
                        <input type="number" step="0.01" class="form-control" id="ratePerKm" name="ratePerKm"
                               value="${currentRate}" required />
                    </div>
                    <button type="submit" class="btn btn-success">Update Rate</button>
                </form>
            </div>
        </div>

    

    

    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>