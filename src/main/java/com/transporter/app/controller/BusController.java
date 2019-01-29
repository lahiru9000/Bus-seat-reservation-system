package com.transporter.app.controller;

import com.transporter.app.model.Bus;
import com.transporter.app.model.Trip;
import com.transporter.app.service.BusService;
import com.transporter.app.service.TripService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BusController {

    private final BusService busService;

    private final TripService tripService;

    @Autowired
    public BusController(BusService busService, TripService tripService) {
        this.busService = busService;
        this.tripService = tripService;
    }

    @GetMapping("/admin/bus/all")
    public ModelAndView listAllBuses() {
        ModelAndView mv = new ModelAndView("admin/all-buses");
        mv.addObject("buses", busService.findAllBuses());
        return mv;
    }

    @GetMapping("/admin/bus/add")
    public ModelAndView addBus() {
        ModelAndView mv = new ModelAndView("admin/add-bus");
        Bus b = new Bus();
        mv.addObject("bus", b);
        return mv;
    }

    @PostMapping("/admin/bus/save")
    public ModelAndView saveBus(@ModelAttribute Bus bus, BindingResult result) {
        if (result.hasErrors()) {
            return new ModelAndView("redirect:/admin/bus/add");
        } else {
            busService.saveBus(bus);
            return new ModelAndView("redirect:/admin/bus/all");
        }
    }

    @GetMapping("/admin/bus/delete/{id}")
    public ModelAndView deleteBus(@PathVariable int id) {

        Bus bus = busService.findBusById(id);
        Trip trip = tripService.findTripByBusRegNumber(bus.getBusRegNumber());
        tripService.deleteTripById(trip.getId());

        busService.deleteBusById(id);
        return new ModelAndView("redirect:/admin/bus/all");
    }

    @GetMapping("/admin/bus/edit/{id}")
    public ModelAndView editBus(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("admin/edit-bus");
        Bus bus = busService.findBusById(id);
        mv.addObject("bus", bus);
        return mv;
    }

    @PostMapping("/admin/bus/update")
    public ModelAndView updateBus(@RequestParam int id,
                                  @RequestParam String busRegNumber,
                                  @RequestParam String name,
                                  @RequestParam int noOfSeats,
                                  @RequestParam String type,
                                  @RequestParam String facilities,
                                  @RequestParam int isAvailable) {

        Bus bus = busService.findBusById(id);

        bus.setBusRegNumber(busRegNumber);
        bus.setName(name);
        bus.setNoOfSeats(noOfSeats);
        bus.setType(type);
        bus.setFacilities(facilities);
        bus.setIsAvailable(isAvailable);

        busService.saveBus(bus);

        return new ModelAndView("redirect:/admin/bus/all");
    }

}
