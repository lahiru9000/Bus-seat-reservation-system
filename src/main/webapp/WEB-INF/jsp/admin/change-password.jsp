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
                                    <legend class="text-bold">Change Password</legend>
                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <label class="control-label">Old Password</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                    <input type="password" name='password' class="form-control"
                                                           required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label">New Password</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                    <input type="password" name='password' class="form-control"
                                                           required>
                                                </div>
                                            </div>

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
