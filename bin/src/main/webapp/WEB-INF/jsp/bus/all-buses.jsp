<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>All Buses</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Admin Dashboard</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/bus/all">Buses</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/bus/add">Add New Bus</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h3>List of Buses</h3>
    <br>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Seat Count</th>
            <th>Type</th>
            <th>Facilities</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${buses}" var="bus">
            <tr>
                <td>${bus.name}</td>
                <td>${bus.seatCount}</td>
                <td>${bus.type}</td>
                <td>${bus.facilities}</td>
                <td>
                    <a href="/bus/edit/${bus.id}">
                        <button type="submit" class="btn btn-primary">Edit</button>
                    </a>
                </td>
                <td>
                    <a href="/bus/delete/${bus.id}">
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
