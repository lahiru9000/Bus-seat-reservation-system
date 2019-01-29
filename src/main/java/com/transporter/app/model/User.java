package com.transporter.app.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private int id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "gender")
    private String gender;

    @Column(name = "nic")
    private String nic;

    @Column(name = "mobile")
    private String mobile;

    @Column(name = "role")
    private String roleName;

    @Column(name = "active")
    private int active;

    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "role_id")
    private Role role;

    public User() {
    }

    public User(String firstName, String lastName, String email, String password, String gender, String nic, String mobile, String role, int active) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.nic = nic;
        this.mobile = mobile;
        this.roleName = role;
        this.active = active;
    }

    public User(String firstName, String lastName, String email, String gender, String nic, String mobile, String role, int active) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.nic = nic;
        this.mobile = mobile;
        this.roleName = role;
        this.active = active;
    }

}



























