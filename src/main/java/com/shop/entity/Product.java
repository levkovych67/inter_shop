package com.shop.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Calendar;
import java.util.List;

@Entity
@Getter
@Setter
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    @Column(columnDefinition = "TEXT")
    private String description;

    private Double price;

    @OneToMany(cascade = CascadeType.ALL,mappedBy = "product")
    private List<Image> images;


    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinTable(name = "product_comment", joinColumns = { @JoinColumn(name = "product_id") }, inverseJoinColumns = { @JoinColumn(name = "comment_id") })
    private List<Comment> comments;
}
