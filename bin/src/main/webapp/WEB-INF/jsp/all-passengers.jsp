<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>All Passengers</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">

    <a class="navbar-brand" href="#">Admin Dashboard</a>

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="add">Add New Passenger</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h3>List of Passengers</h3>
    <br>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>User Name</th>
            <th>Password</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>NIC</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${passengers}" var="appUser">
            <tr>
                <td>${appUser.firstName}</td>
                <td>${appUser.lastName}</td>
                <td>${appUser.username}</td>
                <td>${appUser.password}</td>
                <td>${appUser.gender}</td>
                <td>${appUser.email}</td>
                <td>${appUser.mobile}</td>
                <td>${appUser.nic}</td>
                <td>
                    <a href="/appUser/edit/${appUser.id}">
                        <button type="submit" class="btn btn-success">Edit</button>
                    </a>
                </td>
                <td>
                    <a href="/appUser/delete/${appUser.id}">
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
