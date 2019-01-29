<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Edit Location</title>
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
                                <form action="/admin/location/update" method="post">
                                    <legend class="text-bold">Location Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">

                                                <div class="form-group">
                                                    <input type='hidden' name='id' class='form-control'
                                                           required value="${location.id}"/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Name</label>
                                                    <input type='text' name='name' class='form-control'
                                                           value="${location.name}" required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Description</label>
                                                    <input type='text' name='description' class='form-control'
                                                           value="${location.description}"/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Enabled</label>
                                                    <br>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="enabled"
                                                                   value="1" required>Yes
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="enabled"
                                                                   value="0" required>No
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


<div class="container">
    <h2>Update Location</h2>
    <br>
    <form action='/location/update' method='post'>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b></b></td>
                <td><input type='hidden' name='id' class='form-control' required value="${location.id}"/></td>
            </tr>
            <tr>
                <td><b>Name</b></td>
                <td><input type='text' name="name" class='form-control' required value="${location.name}"/></td>

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
                    <button type="submit" class="btn btn-primary">Update</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
