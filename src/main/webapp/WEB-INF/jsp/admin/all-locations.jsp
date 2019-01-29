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
                                        <th>Name</th>
                                        <th>Description</th>
                                        <th>Enabled</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Description</th>
                                        <th>Enabled</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${locations}" var="location">
                                        <tr>
                                            <td>${location.name}</td>
                                            <td>${location.description}</td>
                                            <td>${location.enabled}</td>
                                            <td>
                                                <a href="/admin/location/edit/${location.id}">
                                                    <button type="submit" class="btn btn-primary">Edit</button>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/location/delete/${location.id}">
                                                    <button type="submit" class="btn btn-danger">Delete</button>
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
