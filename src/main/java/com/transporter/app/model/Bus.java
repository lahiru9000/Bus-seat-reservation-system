package com.transporter.app.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "bus")
public class Bus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bus_id")
    private int id;

    @Column(name = "registration_number")
    private String busRegNumber;

    @Column(name = "name")
    private String name;

    @Column(name = "seat_count")
    private int noOfSeats;

    @Column(name = "type")
    private String type;

    @Column(name = "facilities")
    private String facilities;

    @Column(name = "is_available")
    private int isAvailable;

    @OneToMany(mappedBy = "bus", cascade = CascadeType.ALL)
    private List<Trip> trips;

    public Bus() {
    }

    public Bus(String busRegNumber, String name, int noOfSeats, String type, String facilities, int isAvailable) {
        this.busRegNumber = busRegNumber;
        this.name = name;
        this.noOfSeats = noOfSeats;
        this.type = type;
        this.facilities = facilities;
        this.isAvailable = isAvailable;
    }
}


