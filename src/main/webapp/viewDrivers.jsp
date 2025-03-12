<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title> Drivers</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-blue: #0a7cd4;
            --accent-blue: #084e8f;
            --dark-bg: #000000;
            --blue-bg: #0a192f;
            --card-bg: rgba(0,0,0,0.8);
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
            margin-top: 3rem;
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
        .btn-danger {
            background-color: #dc3545;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            color: var(--text-light);
            transition: background 0.3s, transform 0.2s;
        }
        .btn-danger:hover {
            background-color: #c82333;
            transform: translateY(-2px);
        }
        .btn-secondary {
            background-color: var(--primary-blue);
            border: none;
            color: var(--text-light);
            border-radius: 4px;
            transition: background 0.3s, transform 0.2s;
        }
        .btn-secondary:hover {
            background-color: var(--accent-blue);
            transform: translateY(-2px);
        }
    </style>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">All Drivers</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Contact Number</th>
                <th>NIC</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td>${driver.id}</td>
                <td>${driver.name}</td>
                <td>${driver.contactNumber}</td>
                <td>${driver.nic}</td>
                <td>
                    <a href="DeleteDriverServlet?driverId=${driver.id}" 
                       class="btn btn-sm btn-danger" 
                       onclick="return confirm('Are you sure you want to delete this driver?');">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
</div>
</body>
</html>
