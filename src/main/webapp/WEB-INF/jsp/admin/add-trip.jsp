<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Add New Trip</title>
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
                                <form action="/admin/trip/save" method="post">
                                    <legend class="text-bold">Trip Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">
                                                <div class="form-group">
                                                    <label class="control-label">Route Number</label>
                                                    <br>
                                                    <form:select cssClass="form-control" path="trip.routeNumber">
                                                        <form:options items="${routes}"/>
                                                    </form:select>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Register Number of the Bus</label>
                                                    <br>
                                                    <form:select cssClass="form-control" path="trip.busRegNumber">
                                                        <form:options items="${busRegNumbers}"/>
                                                    </form:select>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Price Per Seat(Rs)</label>
                                                    <input type="text" name='pricePerSeat' class="form-control"
                                                           required>
                                                </div>

                                                <div class="content-group-lg">
                                                    <label class="text-bold no-margin-bottom">Departure Date</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control pickadate-labels"
                                                               placeholder="Select Date" name="departureDate" required>
                                                    </div>
                                                </div>

                                                <div class="content-group-lg">
                                                    <label class="text-bold no-margin-bottom">Arrival Date</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control pickadate-labels"
                                                               placeholder="Select Date" name="arrivalDate" required>
                                                    </div>
                                                </div>

                                                <div class="content-group-lg margin-top-20">
                                                    <label class="text-bold no-margin-bottom">Departure Time</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control timepicker"
                                                               placeholder="Select Time" name="departureTime" required>
                                                    </div>
                                                </div>

                                                <div class="content-group-lg margin-top-20">
                                                    <label class="text-bold no-margin-bottom">Arrival Time</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control timepicker"
                                                               placeholder="Select Time" name="arrivalTime" required>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Duration</label>
                                                    <input type="text" name='duration' class="form-control"
                                                           required>
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

<%--<script>
    $(function() {
        // choose target dropdown
        var select = $('select');
        select.html(select.find('option').sort(function(x, y) {
            // to change to descending order switch "<" for ">"
            return $(x).text() > $(y).text() ? 1 : -1;
        }));

        // select default item after sorting (first item)
        // $('select').get(0).selectedIndex = 0;
    });
</script>--%>

</body>
</html>
