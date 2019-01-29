<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Add New Route</title>
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

                                <form action="/admin/route/save" method="post">
                                    <legend class="text-bold">Route Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">

                                                <div class="form-group">
                                                    <label class="control-label">Route Number</label>
                                                    <input type='number' name='routeNumber' class='form-control'
                                                           required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Distance</label>
                                                    <input type="number" name='distance' class="form-control" required>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Start Location</label>
                                                    <br>
                                                    <form:select cssClass="form-control" path="route.startLocation">
                                                        <form:options items="${locations}"/>
                                                    </form:select>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">End Location</label>
                                                    <br>
                                                    <form:select cssClass="form-control" path="route.endLocation">
                                                        <form:options items="${locations}"/>
                                                    </form:select>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Description</label>
                                                    <input type="text" name='description' class="form-control"/>
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
