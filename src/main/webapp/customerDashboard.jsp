<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        :root {
            --primary-blue: #29ABE2;        /* A brighter, more modern blue */
            --secondary-blue: #4682B4;     /* Steel Blue */
            --accent-blue: #5DADE2;         /* A lighter accent for highlights */
            --dark-blue: #08306B;          /* A deep, professional dark blue */
            --text-light: #FFFFFF;            /* Clean, crisp white */
            --card-bg: rgba(255, 255, 255, 0.05); /*  Translucent white for a frosted glass effect */
        }

        /* Background Image for entire page */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            color: var(--text-light);
            /* Use a gradient background from dark blue (#00008B) to dark blue (#0A192F) */
            background: linear-gradient(to bottom, var(--dark-blue), #000000);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }

        /* Header bar styling */
        .header-bar {
            background-color: rgba(10, 31, 47, 0.7); /* Slightly transparent dark blue */
            color: var(--text-light);
            padding: 20px;
            text-align: center;
            border-radius: 0 0 10px 10px;
            margin-bottom: 30px;
            position: relative; /* For placing the sign-out button */
        }
        .header-bar h2 {
            margin: 0;
        }
        .sign-out-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: var(--dark-blue); /* Black */
            color: var(--text-light); /* White */
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            text-decoration: none;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sign-out-btn:hover {
            background-color: var(--accent-blue);
        }


        /* Container styling */
        .content-container {
            max-width: 900px;
            margin: 2rem auto;
            background-color: var(--card-bg);  /*Semi trasparent dark gray*/
            border-radius: 10px;
            padding: 2rem;
            color: var(--text-light);    /*Setting text color to white*/
        }

        /* Table and form styling */
        .table th,
        .table td {
            text-align: center;
            vertical-align: middle;
            border-color: var(--accent-blue); /* Use a dark border color */
        }

        .table thead th {
            background-color: var(--dark-blue);
            color: var(--text-light);
        }

        .form-control {
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid var(--accent-blue); /* Dark border */
            padding: 0.75rem;
            background-color: rgba(255, 255, 255, 0.1); /* Slightly transparent background */
            color: var(--text-light); /* White text color */
        }
        .form-control:focus {
            border-color: var(--primary-blue);
            box-shadow: 0 0 5px rgba(10, 124, 212, 0.5); /* Light blue shadow */
            background-color: rgba(255, 255, 255, 0.2); /* Slightly more opaque on focus */
        }
        .form-select {
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid var(--accent-blue); /* Dark border */
            padding: 0.75rem;
            background-color: rgba(255, 255, 255, 0.1); /* Slightly transparent background */
            color: black; /* White text color */
        }

        .form-select:focus {
            border-color: var(--primary-blue);
            box-shadow: 0 0 5px rgba(10, 124, 212, 0.5); /* Light blue shadow */
            background-color: rgba(255, 255, 255, 0.2); /* Slightly more opaque on focus */
        }
        .btn {
            margin-top: 10px;
            padding: 0.75rem;
            border-radius: 5px;
            font-size: 1rem;
            transition: background-color 0.3s;
        }
        .btn-primary {
            background-color: var(--primary-blue);
            border: none;
        }
        .btn-primary:hover {
            background-color: var(--secondary-blue);
        }
        .btn-info {
            background-color: var(--accent-blue);
            border: none;
            color: var(--text-light);
        }
        .btn-info:hover {
             background-color: rgba(23, 162, 184, 0.8);
        }
        .btn-danger {
            background-color: #dc3545;
            border: none;
            color: var(--text-light);
        }
        .btn-danger:hover {
             background-color: rgba(220, 53, 69, 0.8);
        }
        .btn-success {
            background-color: #28a745;
            border: none;
            color: var(--text-light);
        }
        .btn-success:hover {
           background-color: rgba(40, 167, 69, 0.8);
        }
        /* Card styling */
        .card {
            margin-bottom: 1.5rem;
            border: none;
            border-radius: 10px;
            background-color: var(--card-bg);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            color: var(--text-light);
        }
        .card-header {
            background-color: var(--primary-blue);
            color: var(--text-light);
            font-weight: bold;
            border-radius: 10px 10px 0 0;
            padding: 1rem;
        }

        /* Bill printing styles (added for consistency) */
        @media print {
            body {
                background: none; /* Remove background for printing */
                color: #000; /* Default text color for printing */
            }
            .header-bar, .content-container {
                background: none !important; /* Override background */
                color: #000 !important; /* Override text color */
                box-shadow: none; /* Remove shadow */
                border: none;
            }

            /* Ensure readability of tables and form elements */
            table, .table th, .table td {
                border-color: #000 !important;
            }

            .form-control {
                color: #000 !important; /* Force black text */
            }
        }
    </style>
</head>
<body>

    <!-- Header with sign-out button -->
    <div class="header-bar">
        <h2>Welcome to Customer Dashboard</h2>
        <a href="login.jsp" class="sign-out-btn">Sign Out</a>
    </div>

    <div class="content-container">
        <!-- Create a New Booking Section -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title mb-0">Create a New Booking</h3>
            </div>
            <div class="card-body">
                <form id="bookingForm">
                    <div class="mb-3">
                    <label for="bookingDate" class="form-label">Date:</label>
                    <input type="date" class="form-control"
                           id="bookingDate"
                           name="bookingDate" required />
                     </div>

                    <div class="mb-3">
                        <label for="vehicleType" class="form-label">Vehicle Type:</label>
                        <select class="form-select" id="vehicleType" name="vehicleType" required>
                            <option value="">Select Type</option>
                            <option value="Sedan">Sedan</option>
                            <option value="SUV">SUV</option>
                            <option value="Van">Van</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="destination" class="form-label">Destination:</label>
                        <input type="text" class="form-control" id="destination" name="destination" required />
                    </div>
                    <div class="mb-3">
                        <label for="distance" class="form-label">Distance (KM):</label>
                        <input type="number" step="0.1" class="form-control" id="distance" name="distance" required />
                    </div>
                    <!-- Optional discount field if needed -->
                    <button type="submit" class="btn btn-primary">Book Ride</button>
                </form>
            </div>
        </div>

        <!-- Guidelines Section -->
        <div class="text-center mt-4">
            <a href="CustomerGuidelineServlet" class="btn btn-info">View Guidelines</a>
        </div>

        <hr class="my-4">

        <!-- Your Reservations Section -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title mb-0">Your Reservations</h3>
            </div>
            <div class="card-body">
                <table class="table table-striped" id="reservationsTable">
                    <thead>
                        <tr>
                            <th>Booking ID</th>
                            <th>Date & Time</th>
                            <th>Destination</th>
                            <th>Distance (KM)</th>
                            <th>Discount (LKR)</th>
                            <th>Driver</th>
                            <th>Vehicle</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="reservationsBody">
                        <!-- Bookings will be loaded here via AJAX -->
                    </tbody>
                </table>
            </div>
        </div>
    </div> <!-- end content-container -->

    <script>
        // Handle new booking form submission
        document.getElementById("bookingForm").addEventListener("submit", function(event) {
            event.preventDefault();
            let formData = new URLSearchParams(new FormData(this)).toString();

            fetch("BookingServlet", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert("Booking successful!");
                    loadBookings();
                } else {
                    alert("Failed to book ride: " + data.message);
                }
            })
            .catch(error => console.error("Error:", error));
        });

        // Load the bookings for the logged-in customer
        function loadBookings() {
            fetch("CustomerBookingsServlet")
                .then(response => response.json())
                .then(data => {
                    let tableBody = document.getElementById("reservationsBody");
                    tableBody.innerHTML = "";

                    if (data.length === 0) {
                        tableBody.innerHTML = `<tr><td colspan="10" class="text-center">No bookings found.</td></tr>`;
                        return;
                    }

                    data.forEach(booking => {
                        // Format the booking date/time for display
                        let bookingDateStr = booking.bookingDate
                            ? new Date(booking.bookingDate).toLocaleString()
                            : "N/A";

                        // Highlight status if Approved
                        let statusHtml = booking.status === "Approved"
                            ? '<span class="text-success fw-bold">Approved</span>'
                            : booking.status;

                        // Build the row HTML
                        let row = `
                            <tr>
                                <td>${booking.orderNumber}</td>
                                <td>${bookingDateStr}</td>
                                <td>${booking.destination}</td>
                                <td>${booking.distance}</td>
                                <td>${booking.discount ? booking.discount : 0}</td>
                                <td>${booking.driver ? booking.driver.name : "N/A"}</td>
                                <td>${booking.vehicle ? booking.vehicle.vehicleNumber : "N/A"}</td>
                                <td>${booking.price} LKR</td>
                                <td>${statusHtml}</td>
                                <td>
                                    <button class="btn btn-danger btn-sm"
                                            onclick="cancelBooking(${booking.orderNumber})">
                                        Cancel
                                    </button>
                                    <button class="btn btn-success btn-sm"
                                            onclick="printBill(
                                                ${booking.orderNumber},
                                                '${bookingDateStr}',
                                                '${booking.destination}',
                                                '${booking.distance}',
                                                '${booking.driver ? booking.driver.name : 'N/A'}',
                                                '${booking.vehicle ? booking.vehicle.vehicleNumber : 'N/A'}',
                                                '${booking.price}'
                                            )">
                                        Print Bill
                                    </button>
                                </td>
                            </tr>
                        `;
                        tableBody.innerHTML += row;
                    });
                })
                .catch(error => console.error("Error fetching bookings:", error));
        }

        // Cancel an existing booking
        function cancelBooking(bookingId) {
            if (confirm("Are you sure you want to cancel this booking?")) {
                fetch("CancelBookingServlet", {
                    method: "POST",
                    headers: { "Content-Type": "application/x-www-form-urlencoded" },
                    body: new URLSearchParams({ bookingId: bookingId }).toString()
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert("Booking cancelled successfully.");
                        loadBookings();
                    } else {
                        alert("Failed to cancel booking: " + data.message);
                    }
                })
                .catch(error => console.error("Error cancelling booking:", error));
            }
        }

        // Print the booking bill in a new window
        function printBill(orderNumber, dateTime, destination, distance, driver, vehicle, price) {
            let billWindow = window.open('', '_blank');
            billWindow.document.write(`
                <html>
                <head>
                    <title>Booking Invoice</title>
                    <style>
                        body {
                            font-family: Arial, sans-serif;
                            padding: 20px;
                            text-align: center;
                        }
                        .bill-container {
                            width: 400px;
                            margin: auto;
                            border: 1px solid #ddd;
                            padding: 20px;
                            text-align: left;
                        }
                        h2 { text-align: center; }
                        table {
                            width: 100%;
                            border-collapse: collapse;
                            margin-top: 20px;
                        }
                        td {
                            padding: 8px;
                            border-bottom: 1px solid #ddd;
                        }
                        .total {
                            font-weight: bold;
                            font-size: 18px;
                        }
                    </style>
                </head>
                <body>
                    <div class="bill-container">
                        <h2>MegaCab Booking Receipt</h2>
                        <table>
                            <tr><td><strong>Booking ID:</strong></td><td>${orderNumber}</td></tr>
                            <tr><td><strong>Date & Time:</strong></td><td>${dateTime}</td></tr>
                            <tr><td><strong>Destination:</strong></td><td>${destination}</td></tr>
                            <tr><td><strong>Distance (KM:</strong></td><td>${distance}</td></tr>
                            <tr><td><strong>Driver:</strong></td><td>${driver}</td></tr>
                            <tr><td><strong>Vehicle:</strong></td><td>${vehicle}</td></tr>
                            <tr><td class="total"><strong>Total Price:</strong></td><td>${price} LKR</td></tr>
                        </table>
                    </div>
                </body>
                </html>
            `);
            billWindow.document.close();
            billWindow.print();
        }

        // Load bookings on page load
        loadBookings();
    </script>
</body>
</html>