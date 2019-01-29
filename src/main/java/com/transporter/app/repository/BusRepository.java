package com.transporter.app.repository;

import com.transporter.app.model.Bus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusRepository extends JpaRepository<Bus, Integer> {

    Bus findBusById(int id);

    Bus findByBusRegNumber(String busRegNumber);

//    List<Bus> findByRouteNumber(String routeNumber);


}
