<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Bus Results | Book Now</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/usertemplate/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="/usertemplate/css/style.css" rel='stylesheet' type='text/css'/>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <link href="/usertemplate/css/font-awesome.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <script src="/usertemplate/js/jquery-1.12.0.min.js"></script>
    <script src="/usertemplate/js/bootstrap.min.js"></script>
    <!--animate-->
    <link href="/usertemplate/css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="/usertemplate/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
</head>
<body>

<!--- header ---->
<div class="header">
    <div class="container">
        <div class="logo wow fadeInDown animated" data-wow-delay=".5s">
            <a href="/user-home">Transporter</a>
        </div>
        <div class="bus wow fadeInUp animated" data-wow-delay=".5s">
            <a href="/user-home">Home</a>
            <a href="/travels">Travels</a>
            <a href="/contact">Contact Us</a>
            <a href="/privacy">Privacy Policy</a>
            <a href="/terms">Terms of Use</a>
            <a href="/login">Login</a>
            <a href="/logout">Logout</a>
            <security:authorize access="hasRole('ADMIN')">
                <a href="${pageContext.request.contextPath}/admin/home">Admin Dashboard</a>
            </security:authorize>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--- /header ---->

<!--- banner-1 ---->
<div class="banner-1 ">
    <div class="container">
        <h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
            style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Transporter - Makes Life
            Easier</h1>
    </div>
</div>
<!--- /banner-1 ---->

<!--- bus-tp ---->
<div class="bus-tp">
    <div class="container">
        <h2 style="text-transform: capitalize">Buses from ${fn:toLowerCase(startLocation)}
            to ${fn:toLowerCase(endLocation)}</h2>
        <div class="clearfix"></div>
    </div>
</div>
<!--- /bus-tp ---->


<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th><h3><b>Bus Reg No</b></h3></th>
            <th><h3><b>Departure</b></h3></th>
            <th><h3><b>Arrival</b></h3></th>
            <th><h3><b>Arrival</b></h3></th>
            <th><h3><b>Facilities</b></h3></th>
            <th><h3><b>Price(Rs)</b></h3></th>
        </tr>
        </thead>
        <c:forEach items="${trips}" var="trip">
            <tbody>
            <tr>
                <td>
                    <h><i class="fa fa-drivers-license-o"></i>${trip.busRegNumber}</h>
                </td>
                <td>
                    <h4>${trip.departureDate}</h4>
                    <p><i class="fa fa-clock-o"></i> ${trip.departureTime}</p>
                </td>
                <td>
                    <h4>${trip.arrivalDate}</h4>
                    <p><i class="fa fa-clock-o"></i> ${trip.arrivalTime}</p>
                </td>
                <td>
                    <h4>Duration</h4>
                    <p>${trip.duration}</p>
                </td>
                <td>
                    <h4><i class="fa fa-archive"></i> ${trip.bus.facilities}</h4>
                    <p>No of seats: ${trip.bus.noOfSeats}</p>
                </td>
                <td>
                    <h4><i class="fa fa-dollar"></i> ${trip.pricePerSeat}</h4>
                    <br>
                    <a href="/seats-widget/${trip.id}/${trip.bus.id}" class="btn btn-success">Show Seats</a>
                </td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>