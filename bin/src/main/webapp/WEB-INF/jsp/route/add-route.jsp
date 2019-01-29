<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Add New Route</title>
</head>
<body>

<br>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">

    <a class="navbar-brand" href="#">Admin Dashboard</a>

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="all">All Routes</a>
        </li>
    </ul>
</nav>
<div class="container">
    <h2>Add Route</h2>
    <br>
    <form action='/route/save' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b>Route Number</b></td>
                <td><input type='number' name='routeNumber' class='form-control' required/></td>
            </tr>
            <tr>
                <td><b>From</b></td>
                <td><input type='text' name='startLocation' class='form-control' required/></td>
            </tr>
            <tr>
                <td><b>To</b></td>
                <td><input type='text' name='endLocation' class='form-control' required/>
            </tr>
            <tr>
                <td><b>Distance</b></td>
                <td><input type='number' name='distance' class='form-control' required/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" class="btn btn-primary">Save</button>
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>
