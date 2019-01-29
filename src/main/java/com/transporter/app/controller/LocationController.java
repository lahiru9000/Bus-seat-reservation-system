package com.transporter.app.controller;

import com.transporter.app.model.Location;
import com.transporter.app.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LocationController {

    private final LocationService locationService;

    @Autowired
    public LocationController(LocationService locationService) {
        this.locationService = locationService;
    }

    @GetMapping("/admin/location/all")
    public ModelAndView listAllLocations() {
        ModelAndView mv = new ModelAndView("admin/all-locations");
        mv.addObject("locations", locationService.findAllLocations());
        return mv;
    }

    @GetMapping("/admin/location/delete/{id}")
    public String deleteLocation(@PathVariable int id) {
        locationService.deleteLocation(id);
        return "redirect:/admin/location/all";
    }

    @GetMapping("/admin/location/add")
    public String addLocation() {
        return "admin/add-location";
    }

    @PostMapping("/admin/location/save")
    public String saveLocation(@ModelAttribute Location location, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/admin/location/add";
        } else {
            locationService.saveLocation(location);
            return "redirect:/admin/location/all";
        }
    }

    @GetMapping("/admin/location/edit/{id}")
    public ModelAndView editLocation(@PathVariable int id) {
        ModelAndView mv = new ModelAndView("admin/edit-location");
        Location location = locationService.findLocationById(id);
        mv.addObject("location", location);
        return mv;
    }

    @PostMapping("/admin/location/update")
    public String updateLocation(@RequestParam int id,
                                 @RequestParam String name,
                                 @RequestParam String description,
                                 @RequestParam Boolean enabled) {
        Location location = locationService.findLocationById(id);
        location.setName(name);
        location.setDescription(description);
        location.setEnabled(enabled);
        locationService.saveLocation(location);
        return "redirect:/admin/location/all";
    }

}

