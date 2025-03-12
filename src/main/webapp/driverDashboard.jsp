<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Driver Dashboard</title>
    <!-- Bootstrap and FontAwesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- Google Font for modern typography -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <style>
        /* 
         * Modern Blue & Black Palette 
         * Adjust these variables to fine-tune your preferred shades of blue and black.
         */
        :root {
            --primary-blue: #0a7cd4;   /* Main brand color */
            --accent-blue: #0a76ba;    /* Accent color for hover/focus states */
            --dark-bg: #0a192f;        /* Dark background (body gradient start) */
            --black-bg: #000000;       /* Pure black for gradient end */
            --card-bg: rgba(18, 18, 18, 0.8); /* Semi-transparent card background */
            --text-light: #ffffff;     /* Light text */
            --border-dark: #2f2f2f;    /* Dark border for tables & inputs */
        }

        /* Global Styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            color: var(--text-light);
            /* Use a gradient background from dark blue (#0a192f) to black (#000000) */
            background: linear-gradient(to bottom right, var(--dark-bg), var(--black-bg));
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }

        /* Header Styles */
        .dashboard-header {
            background-color: rgba(0, 0, 0, 0.8); /* Slightly transparent black */
            padding: 20px;
            text-align: center;
            position: relative;
            border-bottom: 2px solid var(--primary-blue);
            box-shadow: 0 4px 8px rgba(0,0,0,0.5);
        }

        .dashboard-header h2 {
            margin: 0;
            font-weight: 500;
        }

        /* Sign Out Button */
        .sign-out-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: var(--primary-blue);
            border: none;
            border-radius: 20px;
            padding: 8px 16px;
            color: var(--text-light);
            text-decoration: none;
            font-weight: 500;
            transition: background 0.3s, transform 0.2s;
        }

        .sign-out-btn:hover {
            background-color: var(--accent-blue);
            transform: translateY(-2px);
        }

        /* Main Container */
        .content-container {
            max-width: 900px;
            margin: 2rem auto;
            background-color: var(--card-bg);
            border-radius: 10px;
            padding: 2rem;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
        }

        /* Headings */
        h3 {
            margin-bottom: 1rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Form Styles */
        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: 500;
            margin-bottom: 5px;
            display: inline-block;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid var(--border-dark);
            border-radius: 4px;
            margin-top: 5px;
            background-color: #2c2c2c;
            color: var(--text-light);
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="password"]:focus,
        select:focus {
            outline: none;
            border-color: var(--primary-blue);
            box-shadow: 0 0 5px rgba(10,124,212,0.5);
        }

        /* Button Styles */
        .btn-primary {
            background-color: var(--primary-blue);
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            color: var(--text-light);
            font-weight: 500;
            transition: background 0.3s, transform 0.2s;
        }

        .btn-primary:hover {
            background-color: var(--accent-blue);
            transform: translateY(-2px);
        }

        .btn-info {
            background-color: transparent;
            border: 1px solid var(--primary-blue);
            border-radius: 4px;
            padding: 10px 20px;
            color: var(--primary-blue);
            font-weight: 500;
            transition: background 0.3s, color 0.3s, transform 0.2s;
        }

        .btn-info:hover {
            background-color: var(--primary-blue);
            color: var(--text-light);
            transform: translateY(-2px);
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            color: var(--text-light);
            font-weight: 500;
            transition: background 0.3s, transform 0.2s;
        }

        .btn-danger:hover {
            background-color: #c82333;
            transform: translateY(-2px);
        }

        /* Table Styles */
        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: var(--text-light);
            background-color: transparent;
            border-collapse: collapse;
        }

        .table th, .table td {
            border: 1px solid var(--border-dark);
            padding: 0.75rem;
            text-align: center;
        }

        .table thead th {
            background-color: var(--primary-blue);
            color: var(--text-light);
            font-weight: 500;
        }

        /* Horizontal Rule Style */
        hr {
            border: 0;
            height: 1px;
            background: var(--border-dark);
            margin: 2rem 0;
        }

        /* Footer Styles */
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 10px;
            text-align: center;
            color: var(--text-light);
            margin-top: 20px;
            border-top: 1px solid var(--border-dark);
        }
    </style>
</head>
<body>

<!-- Header with sign-out button -->
<div class="dashboard-header">
    <h2><i class="fas fa-tachometer-alt"></i> Driver Dashboard</h2>
    <a href="login.jsp" class="sign-out-btn">Sign Out</a>
</div>

<div class="content-container">
    <!-- Form to Add New Vehicle -->
    <h3>Add New Vehicle</h3>
    <form id="vehicleForm" action="VehicleServlet" method="post">
        <div class="form-group">
            <label for="vehicleNumber">Vehicle Number:</label>
            <input type="text" id="vehicleNumber" name="vehicleNumber" required/>
        </div>
        <div class="form-group">
            <label for="vehicleType">Vehicle Type:</label>
            <select id="vehicleType" name="vehicleType" required>
                <option value="">Select Type</option>
                <option value="Sedan">Sedan</option>
                <option value="SUV">SUV</option>
                <option value="Van">Van</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Add Vehicle</button>
    </form>

    <hr>

    <!-- Guidelines Button -->
    <a href="DriverGuidelineServlet" class="btn btn-info">
        <i class="fas fa-book-open"></i> View Guidelines
    </a>

    <hr>

    <!-- Vehicle Table -->
    <h3>Your Vehicles</h3>
    <table class="table">
        <thead>
        <tr>
            <th>Vehicle Number</th>
            <th>Vehicle Type</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody id="vehicleTableBody">
            <!-- Vehicles loaded via JavaScript -->
        </tbody>
    </table>

    <hr>

    <!-- Booking Details Table -->
    <h3>Booking Details</h3>
    <table class="table">
        <thead>
        <tr>
            <th>Booking ID</th>
            <th>Customer Name</th>
            <th>Customer Number</th>
            <th>Destination</th>
            <th>Distance (km)</th>
            <th>Vehicle Number</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody id="bookingTableBody">
            <!-- Bookings loaded via JavaScript -->
        </tbody>
    </table>
</div>

<footer>
    © 2024 Driver Dashboard
</footer>

<script>
    document.addEventListener("DOMContentLoaded", function () {

        // 1) Load Vehicles
        function loadVehicles() {
            fetch("DriverVehiclesServlet")
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                .then(data => {
                    let tableBody = document.getElementById("vehicleTableBody");
                    tableBody.innerHTML = "";

                    if (!data || data.length === 0) {
                        tableBody.innerHTML = `<tr><td colspan="3" class="text-center">No vehicles found.</td></tr>`;
                        return;
                    }

                    data.forEach(vehicle => {
                        let row = `<tr>
                                <td>${vehicle.vehicleNumber}</td>
                                <td>${vehicle.vehicleType}</td>
                                <td>
                                    <a href="DeleteVehicleServlet?vehicleId=${vehicle.id}"
                                       class="btn btn-sm btn-danger"
                                       onclick="return confirm('Are you sure you want to delete this vehicle?');">
                                        Delete
                                    </a>
                                </td>
                            </tr>`;
                        tableBody.innerHTML += row;
                    });
                })
                .catch(error => {
                    console.error("Error fetching vehicles:", error);
                    alert("Failed to load vehicles.");
                });
        }

        // 2) Load Bookings
        function loadBookings() {
            fetch("DriverBookingsServlet")
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.text();
                })
                .then(data => {
                    document.getElementById("bookingTableBody").innerHTML = data;
                })
                .catch(error => {
                    console.error("Error fetching bookings:", error);
                    alert("Failed to load bookings.");
                });
        }

        // 3) Approve Booking
        window.approveBooking = function (bookingId) {
            fetch("ApproveBookingServlet", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: new URLSearchParams({
                    bookingId: bookingId
                }).toString()
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert(data.message);
                        loadBookings(); // Reload booking data to see the updated status
                    } else {
                        alert("Failed to approve booking: " + data.message);
                    }
                })
                .catch(error => {
                    console.error("Error approving booking:", error);
                    alert("Failed to approve booking.");
                });
        };

        // 4) Complete Booking
        window.completeBooking = function (bookingId) {
            fetch("CompleteBookingServlet", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: new URLSearchParams({
                    bookingId: bookingId
                }).toString()
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert(data.message);
                        loadBookings();
                    } else {
                        alert("Failed to complete booking: " + data.message);
                    }
                })
                .catch(error => {
                    console.error("Error completing booking:", error);
                    alert("Failed to complete booking.");
                });
        };

        // 5) Handle Add Vehicle Form Submission
        document.getElementById("vehicleForm").addEventListener("submit", function (event) {
            event.preventDefault();
            const formData = new URLSearchParams(new FormData(this)).toString();

            fetch("VehicleServlet", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert("Vehicle added successfully!");
                        loadVehicles();
                        // Optionally, clear the form
                        document.getElementById("vehicleForm").reset();
                    } else {
                        alert("Failed to add vehicle: " + data.message);
                    }
                })
                .catch(error => {
                    console.error("Error adding vehicle:", error);
                    alert("Failed to add vehicle.");
                });
        });

        // On page load, fetch both vehicles and bookings
        loadVehicles();
        loadBookings();
    });
</script>
</body>
</html>

