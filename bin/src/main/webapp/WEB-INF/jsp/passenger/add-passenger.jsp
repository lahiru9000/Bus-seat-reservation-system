<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Add New Passenger</title>
</head>
<body>

<br>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">

    <a class="navbar-brand" href="#">Admin Dashboard</a>

    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="all">All Passengers</a>
        </li>
    </ul>
</nav>
<div class="container">
    <h2>Add Passenger</h2>
    <br>
    <form action='/appUser/save' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b>First Name</b></td>
                <td><input type='text' name='firstName' class='form-control' placeholder="Calvin" required/></td>
            </tr>
            <tr>
                <td><b>Last Name</b></td>
                <td><input type='text' name='lastName' class='form-control' placeholder="Cambridge" required/></td>
            </tr>
            <tr>
                <td><b>Gender</b></td>
                <td>
                    <%--<input type='text' name='gender' class='form-control' required/>--%>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="gender" value="Male">Male
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="gender" value="Female">Female
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="gender" value="Other">Other
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td><b>Email</b></td>
                <td><input type='email' name='email' class='form-control' placeholder="example@example.com" required/>
                </td>
            </tr>
            <tr>
                <td><b>Mobile</b></td>
                <td><input type='text' name='mobile' class='form-control' required placeholder="07xx xxx xxx"/></td>
            </tr>
            <tr>
                <td><b>NIC</b></td>
                <td><input type='text' name='nic' class='form-control' placeholder="123456789v" required/></td>
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
