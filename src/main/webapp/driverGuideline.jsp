<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Driver Dashboard Guidelines</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Modern Blue Palette */
        :root {
            --primary-blue: #29ABE2;        /* A brighter, more modern blue */
            --secondary-blue: #4682B4;     /* Steel Blue */
            --accent-blue: #5DADE2;         /* A lighter accent for highlights */
            --dark-blue: #08306B;          /* A deep, professional dark blue */
            --text-light: #FFFFFF;            /* Clean, crisp white */
            --card-bg: rgba(255, 255, 255, 0.05); /*  Translucent white for a frosted glass effect */
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  /* Modern, clean font */
            background: linear-gradient(to bottom, var(--dark-blue), #000000);  /*  Rich gradient */
            color: var(--text-light);       /* Consistent white text */
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: rgba( 0.6); /* Dark semi-transparent background */
            border-radius: 12px;             /* More rounded corners */
            padding: 30px;                    /* Increase padding for spaciousness */
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3); /*  Enhanced shadow */
        }

        .card {
            background: var(--card-bg);
            border: 1px solid rgba(255, 255, 255, 0.1);  /* subtle white border */
            border-radius: 10px;           /* Match container radius */
            box-shadow: 0 3px 7px rgba(0, 0, 0, 0.2);  /* card's  shadow */
            color: var(--text-light);       /* Consistent text color */
        }

        .list-group-item {
            background-color: transparent;    /* No background */
            border: none;                     /* No borders */
            color: var(--text-light);       /* Consistent text color */
        }

        .card-header {
            background-color: var(--primary-blue) !important; /*  Primary Blue Header */
            color: var(--text-light) !important;     /* White text */
            font-weight: 600;                     /* Semi-bold */
            border-radius: 10px 10px 0 0;      /* Match card radius */
            padding: 12px 20px;
        }

        a {
            color: var(--accent-blue);         /* Accent Blue Links */
            text-decoration: none;          /* Clean look (no underline) */
            transition: color 0.3s ease;    /* Smooth hover effect */
        }

        a:hover {
            color: var(--text-light);       /* Light text on hover */
        }

        h2, h3, p, li {
            color: var(--text-light);       /* Clean white text */
        }

        .btn-secondary {
            background-color: var(--secondary-blue);   /* Steel Blue */
            border: none;
            border-radius: 8px;               /* Slightly rounder */
            color: var(--text-light);       /* Clean text */
            transition: background-color 0.3s ease, transform 0.2s ease;  /*Smooth transition*/
            padding: 10px 20px;

        }

        .btn-secondary:hover {
            background-color: var(--dark-blue);      /* Deep Blue */
             color: var(--text-light);       /* Clean text */
            transform: translateY(-3px);       /* add depth to buttons by pushing slightly up on hover*/
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h2 class="mb-0">Driver Dashboard Guidelines</h2>
            </div>
            <div class="card-body">
                <p class="lead">Welcome to your MegaCity Cab driver dashboard! This guide helps you manage vehicles and bookings.</p>

                <h3 class="mt-4">Managing Your Vehicles:</h3>
                <ol class="list-group list-group-numbered">
                    <li class="list-group-item"><strong>Add New Vehicle:</strong> Add a new vehicle to your profile.  Enter the vehicle number and select the vehicle type.</li>
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