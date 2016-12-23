package com.shop.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Getter
@Setter
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String city;

    @NotNull
    private String street;

    @NotNull
    @Column(name = "street_number")
    private Integer streetNumber;

    @NotNull
    @Column(name = "apartment_number")
    private Integer apartmentNumber;

    @NotNull
    @Column(name = "zip_code")
    private Integer zipCode;


}
