<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Transporter - Makes Travelling Easier</title>
    <jsp:include page="admin-header.jsp"/>
    <script type="text/javascript">
        $(function () {
            // Dashboard Sales Chart
            // ------------------------------------------------------------------

            var dataMain = {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                series: [
                    [5, 4, 3, 7, 5, 10, 3, 4, 8, 10, 6, 8],
                    [3, 2, 9, 5, 4, 6, 4, 6, 7, 8, 7, 4]
                ]
            };

            var optionsMain = {
                seriesBarDistance: 10
            };

            var responsiveOptionsMain = [
                ['screen and (max-width: 640px)', {
                    seriesBarDistance: 5,
                    axisX: {
                        labelInterpolationFnc: function (value) {
                            return value[0];
                        }
                    }
                }]
            ];
            var chart = new Chartist.Bar('.ct-chart-dashboard', dataMain, optionsMain, responsiveOptionsMain);
        });
    </script>
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
                        <h3 class="page-title">Dashboard
                            <small>Control Panel</small>
                        </h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                        <div class="widget-overview bg-primary-1">
                            <div class="inner">
                                <h2>${totalLocations}</h2>
                                <p>Total Locations</p>
                            </div>

                            <div class="icon">
                                <i class="fa fa-location-arrow"></i>
                            </div>

                            <div class="details bg-primary-3">
                                <a href="/admin/location/all" class="text-white">View Details</a> <i class="fa fa-arrow-right"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">
                        <div class="widget-overview bg-info-1">
                            <div class="inner">
                                <h2>${totalPassengers}</h2>
                                <p>Total Passengers</p>
                            </div>

                            <div class="icon">
                                <i class="fa fa-user"></i>
                            </div>

                            <div class="details bg-info-3">
                                <a href="/admin/user/all" class="text-white">View Details</a> <i class="fa fa-arrow-right"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">
                        <div class="widget-overview bg-success-1">
                            <div class="inner">
                                <h2>${totalBuses}</h2>
                                <p>Total Buses</p>
                            </div>

                            <div class="icon">
                                <i class="fa fa-bus"></i>
                            </div>

                            <div class="details bg-success-3">
                                <a href="/admin/bus/all" class="text-white">View Details</a> <i class="fa fa-arrow-right"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">
                        <div class="widget-overview bg-danger-1">
                            <div class="inner">
                                <h2>${totalRoutes}</h2>
                                <p>Total Routes</p>
                            </div>

                            <div class="icon">
                                <i class="fa fa-road"></i>
                            </div>

                            <div class="details bg-danger-3">
                                <a href="/admin/route/all" class="text-white">View Details</a> <i class="fa fa-arrow-right"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row margin-top-10">
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-block">
                                <h5 class="card-title">Sales Overview</h5>
                            </div>
                            <div class="ct-chart-dashboard height-250 ct-chart-blue"></div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-block">
                                <h5 class="card-title">Recent Products</h5>

                                <div class="recent-products">
                                    <ul>
                                        <li>
                                            <div class="product-image">
                                                <img src="/template/dist/assets/img/default-img.png" alt="">
                                            </div>

                                            <div class="product-info">
                                                    <span class="product-title">
                                                        <a href="#">Product Name</a>
                                                        <span class="pull-right">
                                                            <badge class="badge badge-primary">$1,800</badge>
                                                            </span>
                                                    </span>
                                                <span class="product-description">Product Description goes here.</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="product-image">
                                                <img src="/template/dist/assets/img/default-img.png" alt="">
                                            </div>

                                            <div class="product-info">
                                                    <span class="product-title">
                                                        <a href="#">Product Name</a>
                                                        <span class="pull-right">
                                                            <badge class="badge badge-primary">$1,800</badge>
                                                            </span>
                                                    </span>
                                                <span class="product-description">Product Description goes here.</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="product-image">
                                                <img src="/template/dist/assets/img/default-img.png" alt="">
                                            </div>

                                            <div class="product-info">
                                                    <span class="product-title">
                                                        <a href="#">Product Name</a>
                                                        <span class="pull-right">
                                                            <badge class="badge badge-primary">$1,800</badge>
                                                            </span>
                                                    </span>
                                                <span class="product-description">Product Description goes here.</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="product-image">
                                                <img src="/template/dist/assets/img/default-img.png" alt="">
                                            </div>

                                            <div class="product-info">
                                                    <span class="product-title">
                                                        <a href="#">Product Name</a>
                                                        <span class="pull-right">
                                                            <badge class="badge badge-primary">$1,800</badge>
                                                            </span>
                                                    </span>
                                                <span class="product-description">Product Description goes here.</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-block">
                                <h5 class="card-title">Admin Members</h5>

                                <c:forEach items="${adminList}" var="admin">
                                    <ul class="recent-members">
                                        <li>
                                            <span class="appUser-name">${admin.firstName}</span>
                                            <br>
                                            <span class="joined-date">${admin.lastName}</span>
                                        </li>
                                    </ul>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-block">
                                <h5 class="card-title">Recent Orders</h5>
                                <table class="table table-stripped table-hover">
                                    <thead>
                                    <tr>
                                        <td>#</td>
                                        <td>Item</td>
                                        <td>Status</td>
                                        <td>Price</td>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td><a href="#">190</a></td>
                                        <td>Item Name</td>
                                        <td>
                                            <badge class="badge badge-warning">Pending</badge>
                                        </td>
                                        <td>
                                            $525
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">190</a></td>
                                        <td>Item Name</td>
                                        <td>
                                            <badge class="badge badge-success">Completed</badge>
                                        </td>
                                        <td>
                                            $525
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">190</a></td>
                                        <td>Item Name</td>
                                        <td>
                                            <badge class="badge badge-primary">Shipped</badge>
                                        </td>
                                        <td>
                                            $525
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">190</a></td>
                                        <td>Item Name</td>
                                        <td>
                                            <badge class="badge badge-danger">Cancelled</badge>
                                        </td>
                                        <td>
                                            $525
                                        </td>
                                    </tr>
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
