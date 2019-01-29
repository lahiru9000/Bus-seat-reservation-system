<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Transporter : Seat Reservation</title>
    <link href='${pageContext.request.contextPath}//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <link href='${pageContext.request.contextPath}//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/seatstemplate/css/jquery.seat-charts.css">
    <link href="${pageContext.request.contextPath}/seatstemplate/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="${pageContext.request.contextPath}/seatstemplate/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/seatstemplate/js/jquery.seat-charts.js"></script>
</head>
<body>

<div class="content">
    <div class="main">
        <h2>Book Your Seat Now?</h2>
        <div class="wrapper">
            <div id="seat-map">
                <div class="front-indicator"><h3>Front</h3></div>
            </div>
            <div class="booking-details">
                <div id="legend"></div>
                <h3> Selected Seats (<span id="counter">0</span>):</h3>
                <ul id="selected-seats" class="scrollbar scrollbar1"></ul>

                Total: <b>$<span id="total">0</span></b>

                <a href="${pageContext.request.contextPath}/payment">
                    <button class="checkout-button">Reserve</button>
                </a>
                <a href="#">
                    <button class="checkout-button">Back To Results</button>
                </a>
                <a href="${pageContext.request.contextPath}/user-home">
                    <button class="checkout-button">Home Page</button>
                </a>
            </div>
            <div class="clear"></div>
        </div>


        <script>
            var firstSeatLabel = 1;

            var seatPrice  = ${seatPrice};

            $(document).ready(function () {
                var $cart = $('#selected-seats');
                var $counter = $('#counter');
                var $total = $('#total');
                var sc = $('#seat-map').seatCharts({
                        map: [
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aa_aa',
                            'aaaaa'
                        ],
                        seats: {
                            a: {
                                price: seatPrice
                            }

                        },
                        naming: {
                            top: false,
                            getLabel: function (character, row, column) {
                                return firstSeatLabel++;
                            }
                        },
                        legend: {
                            node: $('#legend'),
                            items: [
                                ['a', 'available', 'Available'],
                                ['u', 'unavailable', 'Already Booked']
                            ]
                        },
                        click: function () {
                            if (this.status() == 'available') {
                                //let's create a new <li> which we'll add to the cart items
                                $('<li>' + 'Seat no ' + this.settings.label + ': <b>Rs. ' + this.data().price + '</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
                                    .attr('id', 'cart-item-' + this.settings.id)
                                    .data('seatId', this.settings.id)
                                    .appendTo($cart);

                                /*
                                 * Lets update the counter and total
                                 *
                                 * .find function will not find the current seat, because it will change its stauts only after return
                                 * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
                                 */
                                $counter.text(sc.find('selected').length + 1);
                                $total.text(recalculateTotal(sc) + this.data().price);

                                return 'selected';
                            } else if (this.status() == 'selected') {
                                //update the counter
                                $counter.text(sc.find('selected').length - 1);
                                //and total
                                $total.text(recalculateTotal(sc) - this.data().price);

                                //remove the item from our cart
                                $('#cart-item-' + this.settings.id).remove();

                                //seat has been vacated
                                return 'available';
                            } else if (this.status() == 'unavailable') {
                                //seat has been already booked
                                return 'unavailable';
                            } else {
                                return this.style();
                            }
                        }
                    });

                //this will handle "[cancel]" link clicks
                $('#selected-seats').on('click', '.cancel-cart-item', function () {
                    //let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
                    sc.get($(this).parents('li:first').data('seatId')).click();
                });

                //let's pretend some seats have already been booked
                // sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');//////////////////////////////////////////////////////

            });

            function recalculateTotal(sc) {
                var total = 0;

                //basically find every selected seat and sum its price
                sc.find('selected').each(function () {
                    total += this.data().price;
                });

                return total;
            }
        </script>
    </div>
</div>

<script src="/seatstemplate/js/jquery.nicescroll.js"></script>
<script src="/seatstemplate/js/scripts.js"></script>

</body>
</html>
