<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>All Routes</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">

    <a class="navbar-brand" href="#">Admin Dashboard</a>

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="add">Add New Route</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h3>List of Existing Routes</h3>
    <br>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Route Number</th>
            <th>From</th>
            <th>To</th>
            <th>Distance</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${routes}" var="route">
            <tr>
                <td>${route.routeNumber}</td>
                <td>${route.startLocation}</td>
                <td>${route.endLocation}</td>
                <td>${route.distance}</td>
                <td>
                    <a href="/route/edit/${route.id}">
                        <button type="submit" class="btn btn-success">Edit</button>
                    </a>
                </td>
                <td>
                    <a href="/route/delete/${route.id}">
                        <button type="submit" class="btn btn-warning">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
