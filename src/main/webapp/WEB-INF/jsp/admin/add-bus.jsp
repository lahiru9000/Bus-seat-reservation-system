<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Add New Bus</title>
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
                                <form action="/admin/bus/save" method="post">
                                    <legend class="text-bold">Bus Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">
                                                <div class="form-group">
                                                    <label class="control-label">Registration Number
                                                        <input type='text' name='busRegNumber' class='form-control' required/>
                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Name
                                                        <input type="text" name='name' class="form-control" required/>
                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Seat Count
                                                        <select class="form-control" name="noOfSeats">
                                                            <option value="29">29 Seater 2*2 Style</option>
                                                            <option value="33">33 Seater 2*2 Style</option>
                                                            <option value="37">37 Seater 2*2 Style</option>
                                                            <option value="41">41 Seater 2*2 Style</option>
                                                        </select>
                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Bus Type
                                                        <select class="form-control" name="type">
                                                            <option>Super Luxury</option>
                                                            <option>Luxury</option>
                                                            <option>Semi Luxury</option>
                                                            <option>Normal</option>
                                                        </select>
                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Facilities</label>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <input type="checkbox" class="form-check-input"
                                                                   name="facilities" value="AC"/> AC
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <input type="checkbox" class="form-check-input"
                                                                   name="facilities" value="Adjustable seats"/>
                                                            Adjustable seats
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <input type="checkbox" class="form-check-input"
                                                                   name="facilities" value="TV"/> TV
                                                        </label>
                                                    </div>
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
