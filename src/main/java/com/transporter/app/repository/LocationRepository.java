package com.transporter.app.repository;

import com.transporter.app.model.Location;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository extends JpaRepository<Location, Integer> {

    Location findLocationById(int id);

    Location findLocationByName(String name);

}
