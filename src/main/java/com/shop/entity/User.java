package com.shop.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import java.util.List;

@Entity
@Setter
@Getter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Email
    @Column(unique = true)
    private String email;

    @JsonIgnore
    private String password;

    private Boolean active;


    @Column(name = "first_name")
    private String firstName;


    @Column(name = "last_name")
    private String lastName;


    private String phone;

    @OneToOne
    private Address address;

    @JsonIgnore
    @OneToMany
    @JoinTable(name = "user_product", joinColumns = {@JoinColumn(name = "user_id")}, inverseJoinColumns = {@JoinColumn(name = "product_id")})
    private List<Product> products;

    @JsonIgnore
    @Enumerated(EnumType.STRING)
    private Role role;
}