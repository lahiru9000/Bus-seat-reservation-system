<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>Add New Passenger</title>
</head>
<body>

<!-- NAVBAR -->
<jsp:include page="admin-navbar.jsp"/>
<!-- /NAVBAR -->

<div class="page-container">
    <div class="page-content">

        <jsp:include page="admin-sidebar.jsp"/>

        <!-- PAGE CONTENT -->
        <div class="content-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-block">
                                <form action="/admin/user/save" method="post">
                                    <legend class="text-bold">User Information</legend>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">
                                                <div class="form-group">
                                                    <label class="control-label">First Name</label>
                                                    <input type="text" name='firstName' class="form-control" required>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Last Name</label>
                                                    <input type="text" name='lastName' class="form-control" required>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Email Address</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i
                                                                class="fa fa-appUser"></i></span>
                                                        <input type="email" name='email' class="form-control"
                                                               placeholder="example@example.com" required>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Password</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                        <input type="password" name='password' class="form-control"
                                                               required>
                                                    </div>
                                                </div>

                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset class="content-group margin-top-10">

                                                <div class="form-group">
                                                    <label class="control-label display-block">Gender</label>
                                                    <label class="custom-control custom-radio">
                                                        <input id="radio1" value="Male" name="gender" type="radio" class="custom-control-input">
                                                        <span class="custom-control-indicator"></span>
                                                        <span class="custom-control-description">Male</span>
                                                    </label>
                                                    <label class="custom-control custom-radio">
                                                        <input id="radio2" value="Female" name="gender" type="radio" class="custom-control-input">
                                                        <span class="custom-control-indicator"></span>
                                                        <span class="custom-control-description">Female</span>
                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">NIC</label>
                                                    <input type="text" name='nic' class="form-control" required>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Mobile</label>
                                                    <input type="text" name='mobile' class="form-control"
                                                           placeholder="07xx xxx xxx" required>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Role</label>
                                                    <br>
                                                    <select class="form-control" name="roleName" required>
                                                        <option value="ROLE_USER">USER</option>
                                                        <option value="ROLE_ADMIN">ADMIN</option>
                                                    </select>
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
