<!-- inject:SIDEBAR -->
<div id="sidebar-main" class="sidebar sidebar-default">
    <div class="sidebar-content">
        <ul class="navigation">
            <li class="navigation-header">
                <span>Main</span>
                <i class="icon-menu"></i>
            </li>

            <li>
                <a href="${pageContext.request.contextPath}/admin/home"><i class="fa fa-home"></i><span>Dashboard</span></a>
            </li>

            <%-- Go to User Home --%>
            <li>
                <a href="${pageContext.request.contextPath}/user-home"><i class="fa fa-user-o"></i><span>User Home</span></a>
            </li>

            <li class="navigation-header">
                <span>Sections</span>
                <i class="icon-menu"></i>
            </li>

            <li>
                <a href="#"><i class="fa fa-pencil"></i><span>User</span></a>
                <ul>
                    <li><a href="/admin/user/all">All Users</a></li>
                    <li><a href="/admin/user/add">Add New User</a></li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-bus"></i><span>Bus</span></a>
                <ul>
                    <li><a href="/admin/bus/all">All Bus</a></li>
                    <li><a href="/admin/bus/add">Add New Bus</a></li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-location-arrow"></i><span>Location</span></a>
                <ul>
                    <li><a href="/admin/location/all">All Locations</a></li>
                    <li><a href="/admin/location/add">Add New Location</a></li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-road"></i><span>Route</span></a>
                <ul>
                    <li><a href="/admin/route/all">All Route</a></li>
                    <li><a href="/admin/route/add">Add New Route</a></li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-plane"></i><span>Trip</span></a>
                <ul>
                    <li><a href="/admin/trip/all">All Trips</a></li>
                    <li><a href="/admin/trip/add">Add New Trip</a></li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-shopping-bag"></i><span>Reservation</span></a>
                <ul>
                    <li><a href="/admin/reservation/all">All Reservations</a></li>
                    <li><a href="/admin/reservation/add">Add New Reservation</a></li>
                </ul>
            </li>

    </div>
</div>
<!-- inject:/SIDEBAR -->