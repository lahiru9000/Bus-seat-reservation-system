<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>
<head>
    <jsp:include page="header.jsp"/>
    <title>Travels</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>


<!--- banner ---->
<div class="banner-1">
    <div class="container">
        <h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
            style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Transporter - Best in Class
            for Travel </h1>
    </div>
</div>
<!--- /banner ---->


<!--- travel ---->
<div class="travel">
    <div class="container">
        <h3>Bus routes and timings</h3>
        <p>A/C Multi-Axle Semisleeper, A/C Sleeper, Non A/C Seater & Sleeper bus types operated by this travel operator.
            Now book online bus tickets at Check the amenities provided such as blanket, water, video which can vary by
            routes before booking tickets.customers can book tickets with debit card, credit card and net banking. Book
            tickets and enjoy the benefits of m-ticket.</p>
        <div class="tra-top">
            <h4>Bus routes and timings</h4>

            <ul class="rout">
                <li class="las">Route Number</li>
                <li class="fir">Distance(KM)</li>
                <li class="ser">Start Location</li>
                <li class="dat">End Location</li>
                <li class="rou">Description</li>
                <div class="clearfix"></div>
            </ul>

            <ul class="rou-secnd animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms"
                style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">

                <c:forEach items="${routes}" var="route">
                    <li class="las">
                        <br>
                        <h2>${route.routeNumber}</h2>
                    </li>
                    <li class="fir">
                        <br>
                        <h2>${route.distance}km</h2>
                    </li>
                    <li class="ser">
                        <br>
                        <h2>${route.startLocation}</h2>
                    </li>
                    <li class="dat">
                        <br>
                        <h2>${route.endLocation}</h2>
                    </li>
                    <li class="rou">
                        <br>
                        <h2>${route.description}</h2>
                    </li>
                    <div class="clearfix"></div>
                </c:forEach>
            </ul>

        </div>
    </div>
</div>
<!--- /travel ---->


<%--<div class="travel">
    <div class="container">

        <p>A/C Multi-Axle Semisleeper, A/C Sleeper, Non A/C Seater & Sleeper bus types operated by this travel operator.
            Now book online bus tickets at Check the amenities provided such as blanket, water, video which can vary by
            routes before booking tickets.customers can book tickets with debit card, credit card and net banking. Book
            tickets and enjoy the benefits of m-ticket.</p>

        <table class="table">
            <thead>
            <tr>
                <th><h3><b>Route Number</b></h3></th>
                <th><h3><b>Distance(km)</b></h3></th>
                <th><h3><b>Start</b></h3></th>
                <th><h3><b>End</b></h3></th>
                <th><h3><b>Description</b></h3></th>
            </tr>
            </thead>
            <c:forEach items="${routes}" var="route">
                <tbody>
                <tr>
                    <td>
                        <h4>${route.routeNumber}</h4>
                    </td>
                    <td>
                        <h4>${route.distance}</h4>
                    </td>
                    <td>
                        <h4>${route.startLocation}</h4>
                    </td>
                    <td>
                        <h4>${route.endLocation}</h4>
                    </td>
                    <td>
                        <h4>${route.description}</h4>
                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
</div>--%>


<jsp:include page="footer.jsp"/>

</body>
</html>
