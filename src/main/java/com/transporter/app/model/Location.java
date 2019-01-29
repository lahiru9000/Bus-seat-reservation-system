package com.transporter.app.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "location")
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "location_id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "enabled")
    private Boolean enabled;

    @ManyToMany(mappedBy = "locations", cascade = CascadeType.ALL)
    private List<Route> routes;

    public Location() {
    }

    public Location(String name, String description, Boolean enabled) {
        this.name = name;
        this.enabled = enabled;
        this.description = description;
    }

}
