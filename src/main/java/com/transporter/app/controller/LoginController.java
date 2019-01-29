package com.transporter.app.controller;

import com.transporter.app.model.Bus;
import com.transporter.app.model.Location;
import com.transporter.app.model.Route;
import com.transporter.app.model.User;
import com.transporter.app.service.BusService;
import com.transporter.app.service.LocationService;
import com.transporter.app.service.RouteService;
import com.transporter.app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {

    private final UserService userService;

    private final RouteService routeService;

    private final LocationService locationService;

    private final BusService busService;

    @Autowired
    public LoginController(UserService userService, RouteService routeService, LocationService locationService, BusService busService) {
        this.userService = userService;
        this.routeService = routeService;
        this.locationService = locationService;
        this.busService = busService;
    }

    @GetMapping("/user-home")
    public ModelAndView showHome() {

        ModelAndView mv = new ModelAndView("user/user-home");

        List<Bus> busList = busService.findAllBuses();
        mv.addObject("totalBuses", busList.size());
        mv.addObject("buses", busList);

        List<Route> routeList = routeService.findAllRoutes();
        mv.addObject("totalRoutes", routeList.size());
        mv.addObject("routes", routeList);

        List<Location> locationList = locationService.findAllLocations();
        mv.addObject("totalLocations", locationList.size());
        List<String> locationNameList = new ArrayList<>();
        for (Location location : locationList) {
            locationNameList.add(location.getName());
        }
        mv.addObject("locations", locationNameList);

        return mv;
    }

    // add request mapping for /access-denied
    @GetMapping("/access-denied")
    public String showAccessDenied() {
        return "access-denied";
    }

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("registration");
        return modelAndView;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String createNewUser(@Valid User user, BindingResult bindingResult) {

        User userExists = userService.findUserByEmail(user.getEmail());

        if (userExists != null) {
            bindingResult
                    .rejectValue("email", "error.user",
                            "There is already a user registered with the email provided");
        }

        if (bindingResult.hasErrors()) {

            return "redirect:/registration";

        } else {

            userService.saveUser(user);
            return "redirect:/user-home";

        }
    }

    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView adminHome() {

        ModelAndView mv = new ModelAndView("admin/admin-home");

        List<User> userList = userService.findAllUsers();
        List<User> adminList = new ArrayList<>();
        List<User> passengerList = new ArrayList<>();
        for (User user : userList) {
            if (user.getRoleName().equals("ROLE_ADMIN")) {
                adminList.add(user);
            } else {
                passengerList.add(user);
            }
        }
        mv.addObject("adminList", adminList);
        mv.addObject("totalPassengers", passengerList.size());

        List<Bus> busList = busService.findAllBuses();
        mv.addObject("totalBuses", busList.size());
        mv.addObject("buses", busList);

        List<Route> routeList = routeService.findAllRoutes();
        mv.addObject("totalRoutes", routeList.size());
        mv.addObject("routes", routeList);

        List<Location> locationList = locationService.findAllLocations();
        mv.addObject("totalLocations", locationList.size());
        mv.addObject("locations", locationList);

        return mv;
    }


}
