package com.transporter.app.service;

import com.transporter.app.model.Trip;
import com.transporter.app.repository.TripRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TripService {

    private final TripRepository tripRepository;

    @Autowired
    public TripService(TripRepository tripRepository) {
        this.tripRepository = tripRepository;
    }

    public List<Trip> findAllTrips() {
        return (List<Trip>) tripRepository.findAll();
    }

    public Trip findTripById(int id) {
        return tripRepository.findTripById(id);
    }

    public void saveTrip(Trip trip) {
        tripRepository.save(trip);
    }

    public void deleteTripById(int id) {
        tripRepository.deleteById(id);
    }

    public Trip findTripByBusRegNumber(String busRegNumber) {
        return tripRepository.findByBusRegNumber(busRegNumber);
    }

    public Trip findTripByRouteNumber(String routeNumber) {
        return tripRepository.findTripByRouteNumber(routeNumber);
    }

    public List<Trip> findTripsByRouteNumberAndDepartureDate(String routeNumber, String departureDate) {
        return tripRepository.findByRouteNumberAndDepartureDate(routeNumber, departureDate);
    }

    public Trip findRouteByRouteNumberAndDepartureDateAndDepartureTime(String routeNumber, String departureDate, String departureTime) {
        return tripRepository.findByRouteNumberAndDepartureDateAndDepartureTime(routeNumber, departureDate, departureTime);
    }

}
