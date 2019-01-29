package com.transporter.app.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "trip")
public class Trip {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "trip_id")
    private int id;

    @Column(name = "price_per_seat")
    private int pricePerSeat;

    @Column(name = "departure_date")
    private String departureDate;

    @Column(name = "arrival_date")
    private String arrivalDate;

    @Column(name = "departure_time")
    private String departureTime;

    @Column(name = "arrival_time")
    private String arrivalTime;

    @Column(name = "duration")
    private String duration;

    @Column(name = "route_number")
    private String routeNumber;

    @Column(name = "bus_reg_number")
    private String busRegNumber;

    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "route_id")
    private Route route;

    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "bus_id")
    private Bus bus;

    public Trip() {
    }

    public Trip(int pricePerSeat, String departureDate, String arrivalDate, String departureTime, String arrivalTime, String duration, String routeNumber, String busRegNumber) {
        this.pricePerSeat = pricePerSeat;
        this.departureDate = departureDate;
        this.arrivalDate = arrivalDate;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.duration = duration;
        this.routeNumber = routeNumber;
        this.busRegNumber = busRegNumber;
    }

}
