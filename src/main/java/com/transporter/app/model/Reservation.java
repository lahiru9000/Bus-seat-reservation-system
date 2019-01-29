package com.transporter.app.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "reservation")
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_id")
    private int id;

    @Column(name = "username")
    private String username;

    @Column(name = "departure_date")
    private String departureDate;

    @Column(name = "departure_time")
    private String departureTime;

    @Column(name = "route_number")
    private String routeNumber;

    @Column(name = "seat_numbers")
    private String seatNumbers;

    @Column(name = "total_reserved_seats")
    private int totalSeats;

    @Column(name = "price")
    private int totalPrice;

    @ManyToOne
    @JoinColumn(name = "trip_id")
    private Trip trip;

    public Reservation() {
    }

    public Reservation(String username, String departureDate, String departureTime, String routeNumber, String seatNumbers, int totalSeats, int totalPrice, Trip trip) {
        this.username = username;
        this.departureDate = departureDate;
        this.departureTime = departureTime;
        this.routeNumber = routeNumber;
        this.seatNumbers = seatNumbers;
        this.totalSeats = totalSeats;
        this.totalPrice = totalPrice;
        this.trip = trip;
    }

}
