package com.transporter.app.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "route")
public class Route {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "route_id")
    private int id;

    @Column(name = "route_number")
    private String routeNumber;

    @Column(name = "distance")
    private int distance;

    @Column(name = "start_location")
    private String startLocation;

    @Column(name = "end_location")
    private String endLocation;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "route", cascade = CascadeType.ALL)
    private List<Trip> trips;

    @ManyToMany(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinTable(
            name = "route_location",
            joinColumns = @JoinColumn(name = "route_id"),
            inverseJoinColumns = @JoinColumn(name = "location_id"))
    private List<Location> locations;

    public Route() {
    }

    public Route(String routeNumber, int distance, String startLocation, String endLocation, String description) {
        this.routeNumber = routeNumber;
        this.distance = distance;
        this.startLocation = startLocation;
        this.endLocation = endLocation;
        this.description = description;
    }

}
