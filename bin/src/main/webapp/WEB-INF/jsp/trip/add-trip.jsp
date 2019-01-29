<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Add New Bus</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Admin Dashboard</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/trip/all">Trips</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/trip/add">Add New Trip</a>
        </li>
    </ul>
</nav>

<br>
<div class="container">
    <h2>Add Trip</h2>
    <br>
    <form action='/trip/save' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b>Price Per Seat(Rs)</b></td>
                <td><input type='number' name='pricePerSeat' class='form-control' required/></td>
            </tr>
            <tr>
                <td><b>Departure Date</b></td>
                <td><input type='date' name='departureDate' class='form-control' required/></td>
            </tr>
            <tr>
                <td><b>Arrival Date</b></td>
                <td><input type='date' name='arrivalDate' class='form-control' required/></td>
            </tr>
            <tr>
                <td><b>Departure Time</b></td>
                <td>
                    <%--<label for="dTime">Example select</label>--%>
                    <select class="form-control" name="departureTime">
                        <option>00:00 am</option>
                        <option>01:00 am</option>
                        <option>02:00 am</option>
                        <option>03:00 am</option>
                        <option>04:00 am</option>
                        <option>05:00 am</option>
                        <option>06:00 am</option>
                        <option>07:00 am</option>
                        <option>08:00 am</option>
                        <option>09:00 am</option>
                        <option>10:00 am</option>
                        <option>11:00 am</option>
                        <option>12:00 am</option>
                        <option>01:00 pm</option>
                        <option>02:00 pm</option>
                        <option>03:00 pm</option>
                        <option>04:00 pm</option>
                        <option>05:00 pm</option>
                        <option>06:00 pm</option>
                        <option>07:00 pm</option>
                        <option>08:00 pm</option>
                        <option>09:00 pm</option>
                        <option>10:00 pm</option>
                        <option>11:00 pm</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>Arrival Time</b></td>
                <td>
                    <%--<label for="aTime">Example select</label>--%>
                    <select class="form-control" name="arrivalTime">
                        <option>00:00 am</option>
                        <option>01:00 am</option>
                        <option>02:00 am</option>
                        <option>03:00 am</option>
                        <option>04:00 am</option>
                        <option>05:00 am</option>
                        <option>06:00 am</option>
                        <option>07:00 am</option>
                        <option>08:00 am</option>
                        <option>09:00 am</option>
                        <option>10:00 am</option>
                        <option>11:00 am</option>
                        <option>12:00 am</option>
                        <option>01:00 pm</option>
                        <option>02:00 pm</option>
                        <option>03:00 pm</option>
                        <option>04:00 pm</option>
                        <option>05:00 pm</option>
                        <option>06:00 pm</option>
                        <option>07:00 pm</option>
                        <option>08:00 pm</option>
                        <option>09:00 pm</option>
                        <option>10:00 pm</option>
                        <option>11:00 pm</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>Duration</b></td>
                <td>
                    <input type='text' name='duration' class='form-control' placeholder="6 hours 10 mins" required/>
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
