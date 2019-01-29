package com.transporter.app.controller;

import com.transporter.app.model.Reservation;
import com.transporter.app.model.Route;
import com.transporter.app.model.Trip;
import com.transporter.app.model.User;
import com.transporter.app.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    private final ReservationService reservationService;

    private final RouteService routeService;

    private final TripService tripService;

    private final UserService userService;

    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public AdminController(ReservationService reservationService, RouteService routeService, TripService tripService, UserService userService, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.reservationService = reservationService;
        this.routeService = routeService;
        this.tripService = tripService;
        this.userService = userService;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }


    /**
     * BASIC ADMIN CONTROLLER
     */

    @GetMapping("/admin/user/all")
    public ModelAndView Users(Principal principal) {

        ModelAndView mv = new ModelAndView("admin/all-users");

        System.out.println(principal.getName());

        mv.addObject("users", userService.findAllUsers());
        return mv;

    }

    @GetMapping("/admin/user/delete/{id}")
    public String deleteUser(@PathVariable int id) {

        userService.deleteUser(id);
        return "redirect:/admin/user/all";

    }

    @GetMapping("/admin/user/add")
    public ModelAndView addUser() {

        ModelAndView mv = new ModelAndView("admin/add-user");
        User user = new User();
        mv.addObject("user", user);
        return mv;

    }

    @PostMapping("/admin/user/save")
    public String saveUser(@ModelAttribute User user, BindingResult result) {

        if (result.hasErrors()) {
            return "redirect:/admin/user/add";
        } else {
            userService.saveUserAdmin(user);
            return "redirect:/admin/user/all";
        }
    }

    @GetMapping("/admin/user/edit/{id}")
    public ModelAndView editUser(@PathVariable int id) {

        ModelAndView mv = new ModelAndView("admin/edit-user");
        User user = userService.findUserById(id);
        mv.addObject("user", user);
        return mv;

    }

    @PostMapping("/admin/user/update")
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

        userService.updateUserAdmin(user);

        return "redirect:/admin/user/all";

    }










    //////////////////////////////////////////////////////

    /**
     * ADMIN RESERVATION
     */

    @GetMapping("/admin/reservation/all")
    public ModelAndView listAllReservations() {

        ModelAndView mv = new ModelAndView("admin/all-reservations");
        mv.addObject("reservations", reservationService.findAllReservations());
        return mv;

    }

    @GetMapping("/admin/reservation/delete/{id}")
    public String deleteReservation(@PathVariable int id) {

        reservationService.deleteReservation(id);
        return "redirect:/reservation/all";

    }

    @GetMapping("/admin/reservation/add/{username}")
    public ModelAndView addReservation(@PathVariable String username) {

        ModelAndView mv = new ModelAndView("admin/add-reservation");
        Reservation reservation = new Reservation();
        reservation.setUsername(username);
        mv.addObject("reservation", reservation);
        return mv;

    }

    @PostMapping("/admin/reservation/save")
    public String saveReservation(@ModelAttribute Reservation reservation, BindingResult result) {

        if (result.hasErrors()) {
            return "redirect:/admin/reservation/add";
        } else {
            Reservation r = reservationService.findReservationById(reservation.getId());
            Trip trip = tripService.findRouteByRouteNumberAndDepartureDateAndDepartureTime(
                    reservation.getRouteNumber(),
                    reservation.getDepartureDate(),
                    reservation.getDepartureTime());
            r.setTrip(trip);
            reservationService.saveReservation(reservation);
            return "redirect:/admin/reservation/all";
        }
    }

    @GetMapping("/admin/reservation/edit/{id}")
    public ModelAndView editReservation(@PathVariable int id) {

        ModelAndView mv = new ModelAndView("admin/edit-reservation");
        Reservation reservation = reservationService.findReservationById(id);
        mv.addObject("reservation", reservation);
        return mv;

    }

    @PostMapping("/admin/reservation/update")
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
        return "redirect:/admin/reservation/all";
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








    @PostMapping("/admin/changepassword")
    public ModelAndView changePasswordAdmin(@PathVariable int userId, @PathVariable String password, @PathVariable String newpassword) {

        ModelAndView mv = new ModelAndView("admin/change-password");

        User user = userService.findUserById(userId);

        if (bCryptPasswordEncoder.matches(password, user.getPassword())) {
            user.setPassword(newpassword);
            mv.setViewName("admin/all-users");
            return mv;
        } else {
            mv.setViewName("admin/change-password");
            return mv;
        }

    }


}
