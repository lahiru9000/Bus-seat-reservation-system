<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>
<head>
    <jsp:include page="admin/admin-header.jsp"/>
    <title>Transporter - Login Page</title>
</head>

<body>
<div class="page-container">
    <!-- PAGE CONTENT -->
    <div class="content h-100">
        <div class="row h-100">
            <div class="col-lg-12">
                <div class="login card auth-box mx-auto my-auto">
                    <div class="card-block text-center">
                        <div class="appUser-icon">
                            <i class="fa fa-appUser-circle"></i>
                        </div>

                        <h4 class="text-light">Login</h4>

                        <form:form action="${pageContext.request.contextPath}/login" method="POST"
                                   class="form-horizontal">

                            <div class="appUser-details">

                                <div class="form-group">
                                    <div class="col-xs-15">
                                        <div>
                                            <!-- Check for login error -->
                                            <c:if test="${param.error != null}">
                                                <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                                    Invalid username and password.
                                                </div>
                                            </c:if>
                                            <!-- Check for logout -->
                                            <c:if test="${param.logout != null}">
                                                <div class="alert alert-success col-xs-offset-1 col-xs-10">
                                                    You have been logged out.
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </span>
                                        <input type="text" name="email" class="form-control" placeholder="Username/Email"
                                               aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon" >
                                                <i class="fa fa-key"></i>
                                            </span>
                                        <input type="password" name="password" class="form-control" placeholder="Password"
                                               aria-describedby="basic-addon1">
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>

                            <div class="appUser-links">
                                <a href="${pageContext.request.contextPath}/user-home" class="pull-left">Back to Home Page</a>
                            </div>

                            <div class="appUser-links">
                                <a href="${pageContext.request.contextPath}/registration" class="pull-right">Register</a>
                            </div>

                        </form:form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /PAGE CONTENT -->
</div>
</body>

</html>