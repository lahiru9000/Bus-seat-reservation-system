<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Add New Location</title>
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
                                <form action="/admin/location/save" method="post">
                                    <legend class="text-bold">Location Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">
                                                <div class="form-group">
                                                    <label class="control-label">Name</label>
                                                    <input type='text' name='name' class='form-control'
                                                           required/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Description</label>
                                                    <input type='text' name='description' class='form-control'/>
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

</body>
</html>
