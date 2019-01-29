package com.transporter.app.service;

import com.transporter.app.model.Reservation;
import com.transporter.app.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class ReservationService {

    private final ReservationRepository reservationRepository;

    @Autowired
    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    /**
     *Reservation operations
     */
    public List<Reservation> findAllReservations() {
        return (List<Reservation>) reservationRepository.findAll();
    }

    public void deleteReservation(int id) {
        reservationRepository.deleteById(id);
    }

    public void saveReservation(Reservation reservation) {
        reservationRepository.save(reservation);
    }

    public Reservation findReservationById(int id) {
        return reservationRepository.findReservationById(id);
    }

    public List<Reservation> findReservationByUsername(String username) {
        return reservationRepository.findReservationsByUsername(username);
    }

}
