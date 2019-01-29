<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="admin-header.jsp"/>
    <title>All Passengers</title>
</head>
<body>

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
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Gender</th>
                                        <th>NIC</th>
                                        <th>Mobile</th>
                                        <th>Is Active</th>
                                        <th>Role</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                        <th>Make a Reservation</th>
                                    </tr>
                                    </thead>

                                    <tfoot>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Gender</th>
                                        <th>NIC</th>
                                        <th>Mobile</th>
                                        <th>Is Active</th>
                                        <th>Role</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                        <th>Make a Reservation</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${users}" var="user">
                                        <tr>
                                            <td>${user.firstName}</td>
                                            <td>${user.lastName}</td>
                                            <td>${user.email}</td>
                                            <td>${user.gender}</td>
                                            <td>${user.nic}</td>
                                            <td>${user.mobile}</td>
                                            <td>${user.active}</td>
                                            <td>${user.roleName}</td>
                                            <td>
                                                <a href="/admin/user/edit/${user.id}">
                                                    <button type="submit" class="btn btn-success">Edit</button>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/user/delete/${user.id}">
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/reservation/add/${user.email}">
                                                    <button type="submit" class="btn btn-primary">Reserve</button>
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


