package com.transporter.app.controller;

import com.transporter.app.model.Location;
import com.transporter.app.model.Route;
import com.transporter.app.model.Trip;
import com.transporter.app.service.LocationService;
import com.transporter.app.service.RouteService;
import com.transporter.app.service.TripService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class RouteController {

    @Autowired
    private RouteService routeService;

    @Autowired
    private LocationService locationService;

    @Autowired
    private TripService tripService;

    @GetMapping("/admin/route/all")
    public ModelAndView listAllRoutes() {

        ModelAndView mv = new ModelAndView("admin/all-routes");
        mv.addObject("routes", routeService.findAllRoutes());
        return mv;

    }

    @GetMapping("/admin/route/delete/{id}")
    public String deleteRoute(@PathVariable int id) {

        Route route = routeService.findRouteById(id);

        Trip trip = tripService.findTripByRouteNumber(route.getRouteNumber());
        tripService.deleteTripById(trip.getId());

        routeService.deleteRouteById(id);
        return "redirect:/admin/route/all";
    }

    @GetMapping("/admin/route/add")
    public ModelAndView addRoute() {

        ModelAndView mv = new ModelAndView("admin/add-route");
        Route r = new Route();
        mv.addObject("route", r);
        return mv;

    }

    @PostMapping("/admin/route/save")
    public String saveRoute(@ModelAttribute Route route, BindingResult result) {

        if (result.hasErrors()) {

            return "redirect:/admin/route/add";

        } else {

            String start = route.getStartLocation();
            String end = route.getEndLocation();
            List<Location> locationsList = new ArrayList<>(locationService.findAllLocations());
            List<Location> newList = new ArrayList<>();
            for (Location list : locationsList ) {
                if (list.getName().equals(start)) {
                    newList.add(list);
                }
                if (list.getName().equals(end)) {
                    newList.add(list);
                }
            }
            route.setLocations(newList);

            routeService.saveRoute(route);

            return "redirect:/admin/route/all";
        }
    }

    @GetMapping("/admin/route/edit/{id}")
    public ModelAndView editRoute(@PathVariable int id) {

        ModelAndView mv = new ModelAndView("admin/edit-route");
        Route route = routeService.findRouteById(id);
        mv.addObject("route", route);
        return mv;

    }

    @PostMapping("/admin/route/update")
    public String updateRoute(@RequestParam int id,
                              @RequestParam String routeNumber,
                              @RequestParam int distance,
                              @RequestParam String startLocation,
                              @RequestParam String endLocation,
                              @RequestParam String description) {

        Route route = routeService.findRouteById(id);

        String start = route.getStartLocation();
        String end = route.getEndLocation();
        List<Location> locationsList = new ArrayList<>(locationService.findAllLocations());
        List<Location> newList = new ArrayList<>();
        for (Location list : locationsList ) {
            if (list.getName().equals(start)) {
                newList.add(list);
            }
            if (list.getName().equals(end)) {
                newList.add(list);
            }
        }
        route.setLocations(newList);

        route.setRouteNumber(routeNumber);
        route.setDistance(distance);
        route.setStartLocation(startLocation);
        route.setEndLocation(endLocation);
        route.setDescription(description);

        routeService.saveRoute(route);

        return "redirect:/admin/route/all";

    }

    //// Get Location list
    @ModelAttribute("locations")
    public List<String> getLocationList(@ModelAttribute Location location) {

        List<String> locationNameList = new ArrayList<>();
        List<Location> locationsList = new ArrayList<>(locationService.findAllLocations());
        for (Location l : locationsList) {
            if (l.getEnabled().equals(true)/* && l.getName().equals()*/) {
                locationNameList.add(l.getName());
            }
        }
        return locationNameList;

    }

}
