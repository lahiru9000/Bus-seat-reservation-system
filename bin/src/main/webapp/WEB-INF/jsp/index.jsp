<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Admin Dashboard | HomePage</title>
</head>
<body>

<br>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">

    <a class="navbar-brand" href="#">Admin Dashboard</a>

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="bus/all">Bus</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="appUser/all">Passenger</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="route/all">Route</a>
        </li>
    </ul>
</nav>

<div class="container">

    <div class="jumbotron">
        <h1><b>Welcome To Transporter</b></h1>
    </div>

</div>
</body>
</html>
