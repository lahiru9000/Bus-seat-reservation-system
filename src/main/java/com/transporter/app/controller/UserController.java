package com.transporter.app.controller;

import com.transporter.app.model.*;
import com.transporter.app.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {

    private final ReservationService reservationService;

    private final LocationService locationService;

    private final RouteService routeService;

    private final TripService tripService;

    private final BusService busService;

    private final UserService userService;

    @Autowired
    public UserController(ReservationService reservationService, LocationService locationService, RouteService routeService, TripService tripService, BusService busService, UserService userService) {
        this.reservationService = reservationService;
        this.locationService = locationService;
        this.routeService = routeService;
        this.tripService = tripService;
        this.busService = busService;
        this.userService = userService;
    }


    //////////////////////////////////////////////////////////////////////////////////////////////////
    /**
     * USER CONTROLLER
     */

    @GetMapping("/user/delete/{id}")
    public String deleteUser(@PathVariable int id) {
        userService.deleteUser(id);
        return "redirect:/user/all";
    }

    @GetMapping("/user/add")
    public ModelAndView addUser() {
        ModelAndView mv = new ModelAndView("registration");
        User user = new User();
        mv.addObject("user", user);
        return mv;
    }

    @PostMapping("/user/save")
    public String saveUser(@ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/user/add";
        } else {
            userService.saveUser(user);
            return "redirect:/login";
        }
    }

    @GetMapping("/user/edit/{id}")
    public ModelAndView editUser(@PathVariable int id) {
        ModelAndView mv = new ModelAndView("user/edit-user");
        User user = userService.findUserById(id);
        mv.addObject("user", user);
        return mv;
    }

    @PostMapping("/user/update")
    public String updateLocation(@RequestParam int id,
                                 @RequestParam String firstName,
                                 @RequestParam String lastName,
                                 @RequestParam String email,
                                 @RequestParam String gender,
                                 @RequestParam String nic,
                                 @RequestParam String mobile,
                                 @RequestParam String roleName,
                                 @RequestParam int active) {

        User user = userService.findUserById(id);

        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setGender(gender);
        user.setNic(nic);
        user.setMobile(mobile);
        user.setRoleName(roleName);
        user.setActive(active);

        userService.updateUser(user);

        return "redirect:/user/all";

    }










    ///////////////////////////////////////////////////////////////////////////////////////////////////
    /**
     * USER RESERVATION CONTROLLER
     */

    @GetMapping("/user/reservation/all")
    public ModelAndView listAllReservations() {

        ModelAndView mv = new ModelAndView("user/all-reservations");
        mv.addObject("reservations", reservationService.findAllReservations());
        return mv;

    }

    @GetMapping("/user/reservation/delete/{id}")
    public String deleteReservation(@PathVariable int id) {

        reservationService.deleteReservation(id);
        return "redirect:/reservation/all";

    }

    @GetMapping("/user/reservation/add")
    public ModelAndView addReservation() {

        ModelAndView mv = new ModelAndView("user/add-reservation");
        Reservation reservation = new Reservation();
        mv.addObject("reservation", reservation);
        return mv;

    }

    @PostMapping("/user/reservation/save")
    public String saveReservation(@ModelAttribute Reservation reservation, BindingResult result) {

        if (result.hasErrors()) {

            return "redirect:/user/reservation/add";

        } else {

            Reservation r = reservationService.findReservationById(reservation.getId());

            Trip trip = tripService.findRouteByRouteNumberAndDepartureDateAndDepartureTime(
                    reservation.getRouteNumber(),
                    reservation.getDepartureDate(),
                    reservation.getDepartureTime());
            r.setTrip(trip);

            reservationService.saveReservation(reservation);
            return "redirect:/user/reservation/all";
        }
    }

    @GetMapping("/user/reservation/edit/{id}")
    public ModelAndView editReservation(@PathVariable int id) {

        ModelAndView mv = new ModelAndView("user/edit-reservation");
        Reservation reservation = reservationService.findReservationById(id);
        mv.addObject("reservation", reservation);
        return mv;

    }

    @PostMapping("/user/reservation/update")
    public String updateReservation(@RequestParam int id,
                                    @RequestParam String username,
                                    @RequestParam String departureDate,
                                    @RequestParam String departureTime,
                                    @RequestParam String routeNumber,
                                    @RequestParam String seatNumbers,
                                    @RequestParam int totalSeats,
                                    @RequestParam int totalPrice) {
        Reservation reservation = reservationService.findReservationById(id);

        Trip trip = tripService.findRouteByRouteNumberAndDepartureDateAndDepartureTime(
                reservation.getRouteNumber(),
                reservation.getDepartureDate(),
                reservation.getDepartureTime());
        reservation.setTrip(trip);

        reservation.setUsername(username);
        reservation.setDepartureDate(departureDate);
        reservation.setDepartureTime(departureTime);
        reservation.setRouteNumber(routeNumber);
        reservation.setSeatNumbers(seatNumbers);
        reservation.setTotalSeats(totalSeats);
        reservation.setTotalPrice(totalPrice);

        reservationService.saveReservation(reservation);
        return "redirect:/user/reservation/all";
    }

    //// Get Route numbers list
    @ModelAttribute("routes")
    public List<String> getRouteNumberList(@ModelAttribute Route route) {

        List<String> routeNumbersArray = new ArrayList<>();
        List<Route> routesList = new ArrayList<>(routeService.findAllRoutes());
        for (Route r : routesList) {
            routeNumbersArray.add(r.getRouteNumber());
        }
        return routeNumbersArray;

    }













    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /**
     *  USER HOME PAGE CONTROLLER
     */

    @GetMapping("/find-all-buses")
    public ModelAndView getAllBusesByStartEndDate(
            @RequestParam(value = "startLocation") String startLocation,
            @RequestParam(value = "endLocation") String endLocation,
            @RequestParam(value = "dDate") String dDate) {

        ModelAndView mv = new ModelAndView("user/result-buses");

        mv.addObject("startLocation", startLocation);
        mv.addObject("endLocation", endLocation);

        // find all routeList by startLocation and endLocation
        List<Route> routeList = routeService.findByStartLocationAndEndLocation(startLocation, endLocation);

        // find all route numbers
        List<String> routeNumbers = new ArrayList<>();
        for (Route r1 : routeList) {
            routeNumbers.add(r1.getRouteNumber());
        }

        List<Trip> tripList = new ArrayList<>();
        for (String s1 : routeNumbers) {
            tripList.addAll(tripService.findTripsByRouteNumberAndDepartureDate(s1, dDate));
        }

        mv.addObject("trips", tripList);

        return mv;

    }

    //// Get Location list
    @ModelAttribute("locations")
    public List<String> getLocationList(@ModelAttribute Location location) {
        ModelAndView mv = new ModelAndView();
        List<String> locationNameList = new ArrayList<>();
        List<Location> locationsList = new ArrayList<>(locationService.findAllLocations());
        for (Location l : locationsList) {
            locationNameList.add(l.getName());
        }
        mv.addObject("locations", locationNameList);
        return locationNameList;
    }











    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /**
     * SEATS WIDGET
     */

    @GetMapping("/seats-widget/{tripId}/{busId}")
    public ModelAndView showSeatWidgetPage(@PathVariable int tripId, @PathVariable int busId) {

        ModelAndView mv = new ModelAndView();

        int noOfSeats = busService.findBusById(busId).getNoOfSeats();

        if (noOfSeats == 29) {
            mv.setViewName("user/seat-widget-29");
        } else if (noOfSeats == 33) {
            mv.setViewName("user/seat-widget-33");
        } else if (noOfSeats == 37) {
            mv.setViewName("user/seat-widget-37");
        } else if (noOfSeats == 41){
            mv.setViewName("user/seat-widget-41");
        }

        int seatPrice = tripService.findTripById(tripId).getPricePerSeat();
        mv.addObject("seatPrice", seatPrice);

        return mv;
    }

    /*@GetMapping("/travels")
    public String showAllTravelsPage() {
        return "user/travels";
    }*/

    @GetMapping("/contact")
    public String showContactPage() {
        return "user/contact";
    }

    @GetMapping("/privacy")
    public String showPrivacyPage() {
        return "user/privacy";
    }

    @GetMapping("/terms")
    public String showTermsPage() {
        return "user/terms";
    }

    @GetMapping("/payment")
    public String showPaymentPage() {
        return "user/payment";
    }











    //////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * Show route details
     */
    @GetMapping("/travels")
    public ModelAndView showTravelDetails() {

        ModelAndView mv = new ModelAndView("user/travels");
        List<Route> routeList = routeService.findAllRoutes();
        mv.addObject("routes", routeList);
        return mv;

    }



}
