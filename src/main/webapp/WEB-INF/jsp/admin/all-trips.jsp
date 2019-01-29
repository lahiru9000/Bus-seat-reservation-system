<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>All Trips</title>
</head>
<body>

<!-- NAVBAR -->
<jsp:include page="admin-navbar.jsp"/>
<!-- /NAVBAR -->


<div class="page-container">
    <div class="page-content">

        <!-- inject:SIDEBAR -->
        <jsp:include page="admin-sidebar.jsp"/>
        <!-- inject:/SIDEBAR -->

        <!-- PAGE CONTENT -->
        <div class="content-wrapper">
            <div class="content">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-block">
                                <table class="display datatable table table-stripped" cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                        <th>Route Number</th>
                                        <th>Register Number of Bus</th>
                                        <th>Price Per Seat(Rs)</th>
                                        <th>Departure Date</th>
                                        <th>Arrival Date</th>
                                        <th>Departure Time</th>
                                        <th>Arrival Time</th>
                                        <th>Duration</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Route Number</th>
                                        <th>Register Number of Bus</th>
                                        <th>Price Per Seat(Rs)</th>
                                        <th>Departure Date</th>
                                        <th>Arrival Date</th>
                                        <th>Departure Time</th>
                                        <th>Arrival Time</th>
                                        <th>Duration</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${trips}" var="trip">
                                        <tr>
                                            <td>${trip.routeNumber}</td>
                                            <td>${trip.busRegNumber}</td>
                                            <td>${trip.pricePerSeat}</td>
                                            <td>${trip.departureDate}</td>
                                            <td>${trip.arrivalDate}</td>
                                            <td>${trip.departureTime}</td>
                                            <td>${trip.arrivalTime}</td>
                                            <td>${trip.duration}</td>
                                            <td>
                                                <a href="/admin/trip/edit/${trip.id}">
                                                    <button type="submit" class="btn btn-primary">Edit</button>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/trip/delete/${trip.id}">
                                                    <button type="submit" class="btn btn-warning">Delete</button>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /PAGE CONTENT -->

    </div>
</div>


</body>
</html>
