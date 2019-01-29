<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
                                <form action="/admin/bus/update" method="post">
                                    <legend class="text-bold">Bus Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">
                                                <div class="form-group">
                                                    <input type='hidden' name='id' class='form-control'
                                                           value="${bus.id}" required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Registration Number</label>
                                                    <input type='text' name='busRegNumber' class='form-control'
                                                           value="${bus.busRegNumber}" required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Name</label>
                                                    <input type="text" name='name' class="form-control" value="${bus.name}">
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
                                                    <label class="control-label">Bus Type</label>
                                                    <select class="form-control" name="type">
                                                        <option>Super Luxury</option>
                                                        <option>Luxury</option>
                                                        <option>Semi Luxury</option>
                                                        <option>Normal</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Facilities</label> &nbsp;
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label" for="ac">
                                                            <input type="checkbox" class="form-check-input" id="ac"
                                                                   name="facilities" value="AC"> AC
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label" for="seats">
                                                            <input type="checkbox" class="form-check-input" id="seats"
                                                                   name="facilities"
                                                                   value="Adjustable seats"> Adjustable seats
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label" for="tv">
                                                            <input type="checkbox" class="form-check-input" id="tv"
                                                                   name="facilities" value="TV"> TV
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <input type="hidden" name='isAvailable' class="form-control"
                                                           value="${bus.isAvailable}"/>
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
