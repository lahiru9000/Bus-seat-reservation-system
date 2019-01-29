package com.transporter.app.repository;

import com.transporter.app.model.Trip;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TripRepository extends CrudRepository<Trip, Integer> {

//    List<Trip> findAllTrip();

    Trip findTripById(int id);

    Trip findByBusRegNumber(String regNumber);

    Trip findTripByRouteNumber(String routeNumber);

    List<Trip> findByRouteNumberAndDepartureDate(String routeNumber, String departureDate);

    Trip findByRouteNumberAndDepartureDateAndDepartureTime(String routeNumber, String departureDate, String departureTime);


}
