<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>All Trips</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Admin Dashboard</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/trip/all">Trips</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/trip/add">Add New Trip</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h3>List of Trips</h3>
    <br>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Price Per Seat(Rs)</th>
            <th>Departure Date</th>
            <th>Arrival Date</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Duration</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${trips}" var="trip">
            <tr>
                <td>${trip.pricePerSeat}</td>
                <td>${trip.departureDate}</td>
                <td>${trip.arrivalDate}</td>
                <td>${trip.departureTime}</td>
                <td>${trip.arrivalTime}</td>
                <td>${trip.duration}</td>
                <td>
                    <a href="/trip/edit/${trip.id}">
                        <button type="submit" class="btn btn-primary">Edit</button>
                    </a>
                </td>
                <td>
                    <a href="/trip/delete/${trip.id}">
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
