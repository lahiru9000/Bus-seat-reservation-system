<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Edit Bus</title>
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
            <a class="nav-link" href="#">Routes</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/bus/add">Add New Bus</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h2>Update Bus</h2>
    <br>
    <form action='/bus/update' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b></b></td>
                <td><input type='hidden' name='id' class='form-control' required value="${bus.id}"/></td>
            </tr>
            <tr>
                <td><b>Name</b></td>
                <td><input type='text' name="name" class='form-control' required value="${bus.name}"/></td>

            </tr>
            <tr>
                <td><b>Seat Count</b></td>
                <td><input type='number' name="seatCount" class='form-control' required value="${bus.seatCount}"/></td>
            </tr>
            <tr>
                <td><b>Bus Type</b></td>
                <td><%--<input type='text' name="type" class='form-control' required value="${bus.type}"/>--%>

                    <%--<input type='text' name='type' class='form-control' required/>--%>
                    <select class="form-control" id="type" name="type">
                        <option>Super Luxury</option>
                        <option>Luxury</option>
                        <option>Semi Luxury</option>
                        <option>Normal</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>Facilities</b></td>
                <td><%--<input type='text' name="type" class='form-control' required value="${bus.type}"/>--%>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="ac">
                            <input type="checkbox" class="form-check-input" id="ac" name="facilities" value="AC"> AC
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="seats">
                            <input type="checkbox" class="form-check-input" id="seats" name="facilities" value="Adjustable seats"> Adjustable seats
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label" for="tv">
                            <input type="checkbox" class="form-check-input" id="tv" name="facilities" value="TV"> TV
                        </label>
                    </div>
                </td>
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
