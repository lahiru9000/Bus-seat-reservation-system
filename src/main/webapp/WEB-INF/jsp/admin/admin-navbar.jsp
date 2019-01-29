<!-- NAVBAR -->
<nav class="navbar navbar-toggleable-md">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav">
            <span>
                <i class="fa fa-code-fork"></i>
            </span>
    </button>

    <button class="navbar-toggler navbar-toggler-left" type="button" id="toggle-sidebar">
            <span>
               <i class="fa fa-align-justify"></i>
            </span>
    </button>

    <a class="navbar-brand logo" href="${pageContext.request.contextPath}/admin/home">
        <h1 class="text-white">Transporter</h1>
    </a>

    <div class="collapse navbar-collapse" id="navbarNav">
        <button class="sidebar-toggle btn btn-flat" id="toggle-sidebar-desktop">
                <span>
                    <i class="fa fa-align-justify"></i>
                </span>
        </button>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle dropdown-has-after" href="http://example.com"
                   id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img src="/template/dist/assets/img/profile-picture.jpg" alt="" class="user-img"> Admin
                </a>

                <%--Logout button--%>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">
                        <i class="fa fa-comment"></i> <span>Profile</span></a>
                    </a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">
                    <i class="fa fa-sign-out"></i> <span>Logout</span>
                    </a>
                </div>
            </li>
        </ul>
    </div>
</nav>
<!-- /NAVBAR -->