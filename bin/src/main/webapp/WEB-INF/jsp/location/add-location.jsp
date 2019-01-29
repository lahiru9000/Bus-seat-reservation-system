<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Add New Location</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Admin Dashboard</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/location/all">Locations</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/location/add">Add New Location</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h2>Add Location</h2>
    <br>
    <form action='/location/save' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b>Name</b></td>
                <td><input type='text' name='name' class='form-control' required/></td>
            </tr>
            <tr>
                <td><b>Enabled</b></td>
                <td>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="enabled" value="1">Yes
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="enabled" value="0">No
                        </label>
                    </div>
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
