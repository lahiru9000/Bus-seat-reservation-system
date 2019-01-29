<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Add New Reservation</title>
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
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-block">
                                <form action="/admin/reservation/update" method="post">
                                    <legend class="text-bold">Location Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">
                                                <div class="form-group">
                                                    <input type='hidden' name='id' value="${reservation.id}" class='form-control'
                                                           required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Username</label>
                                                    <input type='text' name='username' value="${reservation.username}" class='form-control'
                                                           required/>
                                                </div>

                                                <div class="content-group-lg">
                                                    <label class="text-bold no-margin-bottom">Departure Date</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control pickadate-labels"
                                                               placeholder="Try me.." name="departureDate"
                                                               value="${reservation.departureDate}" required>
                                                    </div>
                                                </div>

                                                <div class="content-group-lg margin-top-20">
                                                    <label class="text-bold no-margin-bottom">Departure Time</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control timepicker"
                                                               placeholder="Try me.." name="departureTime"
                                                               value="${reservation.departureTime}" required>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Route Number</label>
                                                    <br>
                                                    <form:select cssClass="form-control" path="reservation.routeNumber">
                                                        <form:options items="${routes}"/>
                                                    </form:select>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Seat Numbers</label>
                                                    <input type='text' name='seatNumbers' value="${reservation.seatNumbers}" class='form-control' required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Total Seats</label>
                                                    <input type='number' name='totalSeats' value="${reservation.totalSeats}" class='form-control' required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Total Price</label>
                                                    <input type='number' name='totalPrice' value="${reservation.totalPrice}" class='form-control' required/>
                                                </div>

                                            </fieldset>
                                        </div>
                                    </div>

                                    <div class="pull-right">
                                        <button type="reset" class="btn btn-secondary">
                                            Reset
                                            <i class="fa fa-refresh position-right"></i>
                                        </button>

                                        <button type="submit" class="btn btn-primary">
                                            Submit
                                            <i class="fa fa-arrow-right position-right"></i>
                                        </button>
                                    </div>
                                </form>
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
