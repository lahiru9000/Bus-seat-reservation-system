<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>All Buses</title>
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
                                        <th>Registration Number</th>
                                        <th>Name</th>
                                        <th>Seat Count</th>
                                        <th>Type</th>
                                        <th>Facilities</th>
                                        <th>Is Available</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Registration Number</th>
                                        <th>Name</th>
                                        <th>Seat Count</th>
                                        <th>Type</th>
                                        <th>Facilities</th>
                                        <th>Is Available</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${buses}" var="bus">
                                        <tr>
                                            <td>${bus.busRegNumber}</td>
                                            <td>${bus.name}</td>
                                            <td>${bus.noOfSeats}</td>
                                            <td>${bus.type}</td>
                                            <td>${bus.facilities}</td>
                                            <td>${bus.isAvailable}</td>
                                            <td>
                                                <a href="/admin/bus/edit/${bus.id}">
                                                    <button type="submit" class="btn btn-primary">Edit</button>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/bus/delete/${bus.id}">
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
        <!-- /PAGE CONTENT -->
    </div>
</div>

</body>
</html>
