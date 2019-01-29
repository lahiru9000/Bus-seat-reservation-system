<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Edit Passenger</title>
</head>
<body>

<br>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">

    <a class="navbar-brand" href="#">Admin Dashboard</a>

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="../all">All Passengers</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="../add">Add New Passenger</a>
        </li>
    </ul>
</nav>

<div class="container">
    <h2>Edit Passenger</h2>
    <br>
    <form action='/appUser/update' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b></b></td>
                <td><input type='hidden' name='id' class='form-control' value="${appUser.id}" required/></td>
            </tr>
            <tr>
                <td><b>First Name</b></td>
                <td><input type='text' name='firstName' class='form-control' value="${appUser.firstName}" required/></td>
            </tr>
            <tr>
                <td><b>Last Name</b></td>
                <td><input type='text' name='lastName' class='form-control' value="${appUser.lastName}" required/></td>
            </tr>
            <tr>
                <td><b>Gender</b></td>
                <td><input type='text' name='gender' class='form-control' value="${appUser.gender}" required/>
            </tr>
            <tr>
                <td><b>Email</b></td>
                <td><input type='email' name='email' class='form-control' placeholder="example@example.com" value="${appUser.email}" required/>
                </td>
            </tr>
            <tr>
                <td><b>Mobile</b></td>
                <td><input type='text' name='mobile' class='form-control' placeholder="07xx xxx xxx" value="${appUser.mobile}" required/></td>
            </tr>
            <tr>
                <td><b>NIC</b></td>
                <td><input type='text' name='nic' class='form-control' placeholder="123456789v" value="${appUser.nic}" required/></td>
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
