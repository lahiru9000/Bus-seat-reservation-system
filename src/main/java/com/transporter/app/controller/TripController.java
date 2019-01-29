package com.transporter.app.controller;

import com.transporter.app.model.Bus;
import com.transporter.app.service.BusService;
import com.transporter.app.model.Route;
import com.transporter.app.service.RouteService;
import com.transporter.app.model.Trip;
import com.transporter.app.service.TripService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TripController {

    @Autowired
    private TripService tripService;

    @Autowired
    private BusService busService;

    @Autowired
    private RouteService routeService;

    @GetMapping("/admin/trip/all")
    public ModelAndView listAllTrips() {
        ModelAndView mv = new ModelAndView("admin/all-trips");
        mv.addObject("trips", tripService.findAllTrips());
        return mv;
    }

    @GetMapping("/admin/trip/add")
    public ModelAndView addTrip() {
        ModelAndView mv = new ModelAndView("admin/add-trip");
        Trip t = new Trip();
        mv.addObject("trip", t);
        return mv;
    }

    @PostMapping("/admin/trip/save")
    public ModelAndView saveTrip(@ModelAttribute("trip") Trip trip, BindingResult result) {

        if (result.hasErrors()) {
            return new ModelAndView("redirect:/admin/trip/add");
        } else {
            Bus bus = busService.findByBusRegNumber(trip.getBusRegNumber());
            bus.setIsAvailable(0);
            trip.setBus(bus);

            Route route = routeService.findRouteByRouteNumber(trip.getRouteNumber());
            trip.setRoute(route);

            tripService.saveTrip(trip);
            return new ModelAndView("redirect:/admin/trip/all");
        }
    }

    @GetMapping("/admin/trip/delete/{id}")
    public ModelAndView deleteTrip(@PathVariable int id) {

        Trip trip = tripService.findTripById(id);

        Bus bus = busService.findByBusRegNumber(trip.getBusRegNumber());
        bus.setIsAvailable(1);

        tripService.deleteTripById(id);
        return new ModelAndView("redirect:/admin/trip/all");
    }

    @GetMapping("/admin/trip/edit/{id}")
    public ModelAndView editTrip(@PathVariable("id") int id) {

        ModelAndView mv = new ModelAndView("admin/edit-trip");
        Trip trip = tripService.findTripById(id);
        mv.addObject("trip", trip);
        return mv;

    }

    @PostMapping("/admin/trip/update")
    public ModelAndView updateBus(@RequestParam int id,
                                  @RequestParam int pricePerSeat,
                                  @RequestParam String departureDate,
                                  @RequestParam String arrivalDate,
                                  @RequestParam String departureTime,
                                  @RequestParam String arrivalTime,
                                  @RequestParam String duration,
                                  @RequestParam String routeNumber,
                                  @RequestParam String busRegNumber) {

        Trip trip = tripService.findTripById(id);

        Bus bus = busService.findByBusRegNumber(busRegNumber);
        bus.setIsAvailable(0);
        trip.setBus(bus);

        Route route = routeService.findRouteByRouteNumber(routeNumber);
        trip.setRoute(route);

        trip.setPricePerSeat(pricePerSeat);
        trip.setDepartureDate(departureDate);
        trip.setArrivalDate(arrivalDate);
        trip.setDepartureTime(departureTime);
        trip.setArrivalTime(arrivalTime);
        trip.setDuration(duration);
        trip.setRouteNumber(routeNumber);
        trip.setBusRegNumber(busRegNumber);

        tripService.saveTrip(trip);

        return new ModelAndView("redirect:/admin/trip/all");

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

    //// Get Bus Register numbers list
    @ModelAttribute("busRegNumbers")
    public List<String> getBusRegNumberList(@ModelAttribute Bus bus) {

        List<String> BusRegNumbersArray = new ArrayList<>();
        List<Bus> busesList = new ArrayList<>(busService.findAllBuses());
        for (Bus b : busesList) {
            if (b.getIsAvailable() == 1) {
                BusRegNumbersArray.add(b.getBusRegNumber());
            }
        }
        return BusRegNumbersArray;

    }

}
