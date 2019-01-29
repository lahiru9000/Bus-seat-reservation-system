<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>

<head>
    <title>Transporter - Register Page</title>
    <jsp:include page="admin/admin-header.jsp"/>
</head>

<body>
<div class="page-container">
    <!-- PAGE CONTENT -->
    <div class="content h-100">
        <div class="row h-100">
            <div class="col-lg-12">
                <div class="register card auth-box mx-auto my-auto">
                    <div class="card-block text-center">
                        <div class="appUser-icon">
                            <i class="fa fa-appUser-circle-o"></i>
                        </div>

                        <h4 class="text-light">Sign Up</h4>

                        <form action="${pageContext.request.contextPath}/registration" method="POST">

                            <div class="appUser-details">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                    <input type="text" name="firstName" class="form-control"
                                                           placeholder="First Name" required/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                            <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                <input type="text" name="lastName" class="form-control"
                                                       placeholder="Last Name" required/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                        <i class="fa fa-envelope-o"></i>
                                                    </span>
                                                <input type="text" name="email" class="form-control"
                                                       placeholder="Email Address" required/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <label class="control-label display-block">Gender</label>
                                                &nbsp; &nbsp; &nbsp;
                                                <label class="custom-control custom-radio">
                                                    <input id="radio1" value="Male" name="gender" type="radio"
                                                           class="custom-control-input" required>
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">Male</span>
                                                </label>
                                                <label class="custom-control custom-radio">
                                                    <input id="radio2" value="Female" name="gender" type="radio"
                                                           class="custom-control-input" required>
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">Female</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                        <i class="fa fa-key"></i>
                                                    </span>
                                                <input type="password" name="password" class="form-control"
                                                       placeholder="Password" required/>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                        <i class="fa fa-key"></i>
                                                    </span>
                                                <input type="text" class="form-control"
                                                       placeholder="Repeat Password" disabled/>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                                <i class="fa fa-address-book-o"></i>
                                            </span>
                                        <input type="text" name="nic" class="form-control" placeholder="NIC" required/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1">
                                                <i class="fa fa-mobile-phone"></i>
                                            </span>
                                        <input type="text" name="mobile" class="form-control" placeholder="07xx xxx xxx"
                                               required/>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary btn-lg btn-block">REGISTER</button>

                            <div class="appUser-links">
                                <a href="${pageContext.request.contextPath}/login" class="pull-left">Back To Login</a>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /PAGE CONTENT -->
</div>
</body>

</html>