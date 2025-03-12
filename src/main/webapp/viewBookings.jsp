<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Bookings</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        /* Unified Blue & Black Palette */
        :root {
            --primary-blue: #0a7cd4;
            --accent-blue: #084e8f;
            --dark-bg: #000000;
            --blue-bg: #0a192f;
            --card-bg: rgba(0, 0, 0, 0.8);
            --text-light: #ffffff;
            --border-dark: #2f2f2f;
            --table-bg: #1e1e1e;
        }
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to bottom right, var(--dark-bg), var(--blue-bg));
            background-attachment: fixed;
            background-size: cover;
            color: var(--text-light);
            margin: 0;
            padding: 0;
            min-height: 100vh;
        }
        .container {
            background-color: var(--card-bg);
            border-radius: 8px;
            padding: 2rem;
            margin: 3rem auto;
            box-shadow: 0 4px 8px rgba(0,0,0,0.5);
        }
        h2 { color: var(--text-light); margin-bottom: 1rem; }
        .table {
            background-color: var(--table-bg);
            color: var(--text-light);
            margin-bottom: 2rem;
        }
        .table thead th {
            background-color: var(--primary-blue) !important;
            color: var(--text-light) !important;
        }
        .table-bordered > :not(caption) > * > * {
            border-color: var(--border-dark) !important;
        }
        /* Custom Buttons for Update/Delete */
        .btn-update {
            background-color: #28a745;
            border: none;
            color: #fff;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn-update:hover {
            background-color: #218838;
            transform: translateY(-2px);
        }
        .btn-delete {
            background-color: #dc3545;
            border: none;
            color: #fff;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn-delete:hover {
            background-color: #b52c3b;
            transform: translateY(-2px);
        }
        .btn-secondary {
            background-color: var(--primary-blue);
            border: none;
            color: #fff;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn-secondary:hover {
            background-color: var(--accent-blue);
            transform: translateY(-2px);
        }
        input[type="number"][name="discount"] {
            width: 80px;
            margin-right: 4px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>All Bookings</h2>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Order #</th>
                <th>Customer ID</th>
                <th>Driver ID</th>
                <th>Vehicle ID</th>
                <th>Booking Date</th>
                <th>Destination</th>
                <th>Distance (KM)</th>
                <th>Price (LKR)</th>
                <th>Discount (LKR)</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="b" items="${bookings}">
            <tr>
                <td>${b.orderNumber}</td>
                <td>${b.customer != null ? b.customer.id : 'N/A'}</td>
                <td>${b.driver != null ? b.driver.id : 'N/A'}</td>
                <td>${b.vehicle != null ? b.vehicle.id : 'N/A'}</td>
                <td>${b.bookingDate}</td>
                <td>${b.destination}</td>
                <td>${b.distance}</td>
                <td>${b.price}</td>
                <td>${b.discount}</td>
                <td>${b.status}</td>
                <td>
                    <form action="UpdateDiscountServlet" method="post" style="display:inline-block;">
                        <input type="hidden" name="bookingId" value="${b.orderNumber}" />
                        <input type="number" name="discount" step="0.01" placeholder="Discount" />
                        <button type="submit" class="btn btn-sm btn-update">Update</button>
                    </form>
                    <a href="DeleteBookingServlet?bookingId=${b.orderNumber}"
                       class="btn btn-sm btn-delete mt-1"
                       onclick="return confirm('Are you sure you want to delete this booking?');">
                        Delete
                        
                    </a>
                    
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
