package com.transporter.app.repository;

import com.transporter.app.model.Route;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RouteRepository extends JpaRepository<Route, Integer> {

//    List<Route> findAllRoutesOrderByLastnameAsc

    Route findRouteById(int id);

    Route findByRouteNumber(String routeNumber);

    List<Route> findAllByStartLocationIgnoreCaseAndEndLocationIgnoreCase(String startLocation, String endLocation);

    Route findRouteByStartLocation(String start);
}
