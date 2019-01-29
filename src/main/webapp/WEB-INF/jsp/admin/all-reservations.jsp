<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>All Reservations</title>
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
                                        <th>Username</th>
                                        <th>Departure Date</th>
                                        <th>Departure Time</th>
                                        <th>Route Number</th>
                                        <th>Seat Numbers</th>
                                        <th>Total Seats</th>
                                        <th>Total Price</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Username</th>
                                        <th>Departure Date</th>
                                        <th>Departure Time</th>
                                        <th>Route Number</th>
                                        <th>Seat Numbers</th>
                                        <th>Total Seats</th>
                                        <th>Total Price</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${reservations}" var="reservation">
                                        <tr>
                                            <td>${reservation.username}</td>
                                            <td>${reservation.departureDate}</td>
                                            <td>${reservation.departureTime}</td>
                                            <td>${reservation.routeNumber}</td>
                                            <td>${reservation.seatNumbers}</td>
                                            <td>${reservation.totalSeats}</td>
                                            <td>${reservation.totalPrice}</td>
                                            <td>
                                                <a href="/reservation/edit/${reservation.id}">
                                                    <button type="submit" class="btn btn-primary">Edit</button>
                                                </a>&nbsp;
                                                <a href="/reservation/delete/${reservation.id}">
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
    </div>
    <!-- /PAGE CONTENT -->
</div>
</body>
</html>
