<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Driver Dashboard Guidelines</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Dark Blue Color Palette (Same as Customer) */
        :root {
            --primary-blue: #1E3A8A;
            --secondary-blue: #334155;
            --text-light: #FFFFFF;
            --background-dark: #0F172A;
            --card-background: #1E293B;
            --accent-blue: #60A5FA;
        }

        body {
            background-color: var(--background-dark);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: var(--text-light);
        }
        .container {
            max-width: 900px;
        }
        .card {
            border: none;
            box-shadow: 0 0.25rem 0.5rem rgba(0, 0, 0, 0.3);
            background-color: var(--card-background);
            color: var(--text-light);
        }
        .card-header {
            background-color: var(--primary-blue);
            color: var(--text-light);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        .list-group-item {
            border: none;
            background-color: transparent;
            color: var(--text-light);
        }
        .btn-secondary {
            background-color: var(--secondary-blue);
            border-color: var(--secondary-blue);
            color: var(--text-light);
        }
        .btn-secondary:hover {
            background-color: #475569;
            border-color: #475569;
        }
        a {
            color: var(--accent-blue);
        }
        a:hover {
            color: #93C5FD;
        }

        h2, h3, h4, h5, h6 {
            color: var(--text-light);
        }

        .list-unstyled li {
           color: var(--text-light);
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h2 class="mb-0">Driver Dashboard Guidelines</h2>
            </div>
            <div class="card-body">
                <p class="lead">Welcome to your MegaCity Cab driver dashboard! This guide helps you manage vehicles and bookings efficiently.</p>

                <h3 class="mt-4">Managing Your Vehicles:</h3>
                <ol class="list-group list-group-numbered">
                    <li class="list-group-item"><strong>Add New Vehicle:</strong> Add a new vehicle to your profile. Enter the vehicle number and select the vehicle type.</li>
                    <li class="list-group-item"><strong>Your Vehicles Table:</strong> Displays all vehicles registered to your account.</li>
                    <li class="list-group-item"><strong>Delete Vehicle:</strong> Remove a vehicle from your profile by clicking the <strong>Delete</strong> button.</li>
                </ol>

                <h3 class="mt-4">Managing Bookings:</h3>
                <ul class="list-group">
                    <li class="list-group-item"><strong>Booking Details Table:</strong> Shows your assigned bookings and information:
                        <ul>
                            <li>Booking ID</li>
                            <li>Customer Name/Number</li>
                            <li>Destination/Distance</li>
                            <li>Vehicle Number/Status</li>
                        </ul>
                    </li>
                    <li class="list-group-item"><strong>Complete Booking:</strong> After safely completing a ride, click the <strong>Complete</strong> button.</li>
                </ul>

                <h3 class="mt-4">Need Help? Contact Driver Support!</h3>
                <ul class="list-group">
                    <li class="list-group-item">
                        <strong>Phone:</strong> +1-555-DRIVERS (555-3748) - Available 24/7
                    </li>
                    <li class="list-group-item">
                        <strong>Email:</strong> <a href="mailto:driversupport@megacitycab.com">driversupport@megacitycab.com</a>
                    </li>
                    <li class="list-group-item">
                        <strong>Emergency Hotline:</strong> +1-555-911 (for immediate safety concerns)
                    </li>
                    <li class="list-group-item">
                        For assistance with navigating the dashboard, understanding booking statuses, or any technical issues, please contact our support team.
                    </li>
                </ul>

                <a href="DriverVehiclesServlet" class="btn btn-secondary mt-3">Back to Dashboard</a>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>
</body>
</html>