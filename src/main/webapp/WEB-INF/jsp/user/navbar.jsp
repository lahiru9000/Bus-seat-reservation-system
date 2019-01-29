<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!--- navbar ---->
<div class="header">
    <div class="container">
        <div class="logo wow fadeInDown animated" data-wow-delay=".5s">
            <a href="${pageContext.request.contextPath}/user-home">Transporter</a>
        </div>
        <div class="bus wow fadeInUp animated" data-wow-delay=".5s">
            <a href="${pageContext.request.contextPath}/user-home">Home</a>
            <a href="${pageContext.request.contextPath}/travels">Travels</a>
            <a href="${pageContext.request.contextPath}/contact">Contact Us</a>
            <a href="${pageContext.request.contextPath}/privacy">Privacy Policy</a>
            <a href="${pageContext.request.contextPath}/terms">Terms of Use</a>
            <a href="${pageContext.request.contextPath}/login">Login</a>
            <a href="${pageContext.request.contextPath}/logout">Logout</a>
            <security:authorize access="hasRole('ADMIN')">
                <a href="${pageContext.request.contextPath}/admin/home">Admin Dashboard</a>
            </security:authorize>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--- navbar ---->
