package com.transporter.app.service;

import com.transporter.app.model.Location;
import com.transporter.app.repository.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocationService {

    private final LocationRepository locationRepository;

    @Autowired
    public LocationService(LocationRepository locationRepository) {
        this.locationRepository = locationRepository;
    }

    public List<Location> findAllLocations() {
        return locationRepository.findAll();
    }

    public void deleteLocation(int id) {
        locationRepository.deleteById(id);
    }

    public void saveLocation(Location location) {
        locationRepository.save(location);
    }

    public Location findLocationById(int id) {
        return locationRepository.findLocationById(id);
    }

    public Location findLocationByName(String name) {
        return locationRepository.findLocationByName(name);
    }


}
