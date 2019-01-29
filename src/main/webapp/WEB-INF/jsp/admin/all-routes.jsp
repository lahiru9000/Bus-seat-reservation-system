<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>All Routes</title>
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
                                        <th>Route Number</th>
                                        <th>Distance</th>
                                        <th>Start Location</th>
                                        <th>End Location</th>
                                        <th>Description</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Route Number</th>
                                        <th>Distance</th>
                                        <th>Start Location</th>
                                        <th>End Location</th>
                                        <th>Description</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${routes}" var="route">
                                        <tr>
                                            <td>${route.routeNumber}</td>
                                            <td>${route.distance}</td>
                                            <td>${route.startLocation}</td>
                                            <td>${route.endLocation}</td>
                                            <td>${route.description}</td>
                                            <td>
                                                <a href="/admin/route/edit/${route.id}">
                                                    <button type="submit" class="btn btn-success">Edit</button>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/route/delete/${route.id}">
                                                    <button type="submit" class="btn btn-warning">Delete</button>
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
        <!-- /PAGE CONTENT -->

    </div>
</div>
</body>
</html>
