<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Discount</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; font-family: Arial, sans-serif; }
        .container { margin-top: 30px; max-width: 600px; }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="mb-4">Update Discount for Booking ${param.bookingId}</h2>
        <form action="UpdateDiscountServlet" method="post">
            <input type="hidden" name="bookingId" value="${param.bookingId}" />
            <div class="mb-3">
                <label for="discount" class="form-label">Discount (LKR):</label>
                <input type="number" step="0.01" class="form-control" id="discount" name="discount" required placeholder="Enter discount amount" />
            </div>
            <button type="submit" class="btn btn-primary">Update Discount</button>
        </form>
        <br/>
        <a href="ViewBookingsServlet" class="btn btn-secondary">Back to Bookings</a>
    </div>
</body>
</html>
