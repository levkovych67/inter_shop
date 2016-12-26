package com.shop.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.util.List;

@Entity
@Setter
@Getter
public class UserOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Date date;

    @OneToMany
    @JoinTable(name = "user_order_products", joinColumns = { @JoinColumn(name = "user_order_id") }, inverseJoinColumns = { @JoinColumn(name = "product_id") })
    private List<Product> products;

    @OneToOne
    private User user;

    @NotNull
    @Column(name = "total_price")
    private Double totalPrice;
}

