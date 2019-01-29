<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Edit Route</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Admin Dashboard</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/bus/all">Routes</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/bus/add">Add New Route</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h2>Update Route</h2>
    <br>
    <form action='/route/update' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b></b></td>
                <td><input type='hidden' name='id' class='form-control' required value="${route.id}"/></td>
            </tr>
            <tr>
                <td><b>Route Number</b></td>
                <td><input type='number' name="routeNumber" class='form-control' required value="${route.routeNumber}"/></td>

            </tr>
            <tr>
                <td><b>Departure Date</b></td>
                <td><input type='text' name="startLocation" class='form-control' required value="${route.startLocation}"/></td>

            </tr>
            <tr>
                <td><b>Departure Time</b></td>
                <td><input type='text' name="endLocation" class='form-control' required value="${route.endLocation}"/></td>
            </tr>
            <tr>
                <td><b>Seat Count</b></td>
                <td><input type='number' name="distance" class='form-control' required value="${route.distance}"/></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" class="btn btn-primary">Update</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
