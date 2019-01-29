package com.transporter.app.repository;

import com.transporter.app.model.Reservation;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReservationRepository extends CrudRepository<Reservation, Integer> {

    Reservation findReservationById(int id);

    List<Reservation> findReservationsByUsername(String username);

}
