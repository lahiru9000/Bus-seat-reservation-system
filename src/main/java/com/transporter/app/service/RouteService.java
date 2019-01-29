package com.transporter.app.service;

import com.transporter.app.model.Route;
import com.transporter.app.repository.RouteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RouteService {

    private final RouteRepository routeRepository;

    @Autowired
    public RouteService(RouteRepository routeRepository) {
        this.routeRepository = routeRepository;
    }

    public List<Route> findAllRoutes() {
        return routeRepository.findAll();
    }

    public void deleteRouteById(int id) {
        routeRepository.deleteById(id);
    }

    public void saveRoute(Route route) {
        routeRepository.save(route);
    }

    public Route findRouteById(int id) {
        return routeRepository.findRouteById(id);
    }

    public Route findRouteByRouteNumber(String routeNumber) {
        return routeRepository.findByRouteNumber(routeNumber);
    }

    public List<Route> findByStartLocationAndEndLocation(String startLocation, String endLocation) {
        return routeRepository.findAllByStartLocationIgnoreCaseAndEndLocationIgnoreCase(startLocation, endLocation);
    }

    public Route findRouteByStartLocation(String start) {
        return routeRepository.findRouteByStartLocation(start);
    }

}
