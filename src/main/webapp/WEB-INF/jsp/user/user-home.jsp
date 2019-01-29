<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>
<head>
    <jsp:include page="header.jsp"/>
    <title>Transporter-Home</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font: 16px Arial;
        }

        .autocomplete {
            /*the container must be positioned relative:*/
            position: relative;
            display: inline-block;
        }

        input {
            border: 1px solid transparent;
            background-color: #f1f1f1;
            padding: 10px;
            font-size: 16px;
        }

        input[type=text] {
            background-color: #f1f1f1;
            width: 100%;
        }

        input[type=submit] {
            background-color: DodgerBlue;
            color: #fff;
            cursor: pointer;
        }

        .autocomplete-items {
            position: absolute;
            border: 1px solid #d4d4d4;
            border-bottom: none;
            border-top: none;
            z-index: 99;
            /*position the autocomplete items to be the same width as the container:*/
            top: 100%;
            left: 0;
            right: 0;
        }

        .autocomplete-items div {
            padding: 10px;
            cursor: pointer;
            background-color: #fff;
            border-bottom: 1px solid #d4d4d4;
        }

        .autocomplete-items div:hover {
            /*when hovering an item:*/
            background-color: #e9e9e9;
        }

        .autocomplete-active {
            /*when navigating through the items using the arrow keys:*/
            background-color: DodgerBlue !important;
            color: #ffffff;
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<!--- banner ---->
<div class="banner">
    <div class="container">
        <h1 class="wow zoomIn animated animated"
            data-wow-delay=".5s"
            style="visibility: visible;
            animation-delay: 0.5s; animation-name: zoomIn;"> Transporter - Reserve Your Seats Easily</h1>
    </div>
</div>
<div class="container">
    <div class="col-md-4 bann-info1 wow fadeInLeft animated" data-wow-delay=".5s">
        <i class="fa fa-columns"></i>
        <h3>SRI LANKAN NO#1 Transport Service Provider</h3>
    </div>
    <div class="col-md-2"></div>
    <div class="col-md-4 bann-info wow fadeInRight animated" data-wow-delay=".5s">
        <h2>Online Tickets with Zero Booking Fees</h2>
        <form action="${pageContext.request.contextPath}/find-all-buses" method="GET" autocomplete="off"
              class="margin-top-20">
            <div class="input-group autocomplete">
                <label class="control-label" for="startLocation">From</label>
                <input type="text" id="startLocation" name="startLocation" class="form-control" required/>
            </div>
            <hr>
            <div class="input-group autocomplete">
                <label class="control-label" for="endLocation">To</label>
                <input type="text" id="endLocation" name="endLocation" class="form-control" required/>
            </div>
            <hr>
            <div class="input-group">
                <label class="text-bold no-margin-bottom">Date</label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    <input type="text" id="dDate" name="dDate" class="form-control pickadate-dropdown"
                           placeholder="Select a Date.."/>
                </div>
            </div>
            <hr>
            <div class="pull-right">
                <button type="submit" class="btn btn-primary">
                    Search
                    <i class="fa fa-arrow-right position-right"></i>
                </button>
            </div>
        </form>
    </div>
    <div class="col-md-2"></div>
</div>
<div class="clearfix"></div>
<!--- /banner ---->

<!--- routes ---->
<div class="routes">
    <div class="container">
        <div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
            <div class="rou-left">
                <a href="#"><i class="fa fa-truck"></i></a>
            </div>
            <div class="rou-rgt wow fadeInDown animated" data-wow-delay=".5s">
                <h3>${totalBuses}</h3>
                <p>BUSES</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-4 routes-left">
            <div class="rou-left">
                <a href="#"><i class="fa fa-user"></i></a>
            </div>
            <div class="rou-rgt">
                <h3>${totalLocations}</h3>
                <p>LOCATIONS</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
            <div class="rou-left">
                <a href="#"><i class="fa fa-ticket"></i></a>
            </div>
            <div class="rou-rgt">
                <h3>${totalRoutes}</h3>
                <p>ROUTES</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--- /routes ---->

<jsp:include page="footer.jsp"/>

<script>
    function autocomplete(inp, arr) {
        var currentFocus;
        inp.addEventListener("input", function (e) {
            var a, b, i, val = this.value;
            closeAllLists();
            if (!val) {
                return false;
            }
            currentFocus = -1;
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items");
            this.parentNode.appendChild(a);
            for (i = 0; i < arr.length; i++) {
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                    b = document.createElement("DIV");
                    b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                    b.innerHTML += arr[i].substr(val.length);
                    b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                    b.addEventListener("click", function (e) {
                        inp.value = this.getElementsByTagName("input")[0].value;
                        closeAllLists();
                    });
                    a.appendChild(b);
                }
            }
        });
        /*execute a function presses a key on the keyboard:*/
        inp.addEventListener("keydown", function (e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
                currentFocus++;
                addActive(x);
            } else if (e.keyCode == 38) {
                currentFocus--;
                addActive(x);
            } else if (e.keyCode == 13) {
                e.preventDefault();
                if (currentFocus > -1) {
                    if (x) x[currentFocus].click();
                }
            }
        });

        function addActive(x) {
            if (!x) return false;
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            x[currentFocus].classList.add("autocomplete-active");
        }

        function removeActive(x) {
            for (var i = 0; i < x.length; i++) {
                x[i].classList.remove("autocomplete-active");
            }
        }

        function closeAllLists(elmnt) {
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
                if (elmnt != x[i] && elmnt != inp) {
                    x[i].parentNode.removeChild(x[i]);
                }
            }
        }

        document.addEventListener("click", function (e) {
            closeAllLists(e.target);
        });
    }

    var cities = ["Vavunia", "Rathnapura", "Colombo", "Badulla", "Ampara", "Anuradhapura", "Batticaloa", "Galle", "Gampaha", "Hambantota", "Jaffna", "Kandy", "Kegalle", "Killinochchi", "Kurunegala", "Mannar", "Matale", "Matara", "Monaragala", "Mullaitivu", "Nuwara Eliya", "Polonnaruwa", "Puttalam", "Trincomalee"];

    autocomplete(document.getElementById("startLocation"), cities);
    autocomplete(document.getElementById("endLocation"), cities);
</script>

</body>
</html>