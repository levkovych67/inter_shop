package com.shop.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String title;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private List<Product> products;


    @OneToMany
    @JoinColumn(name = "parent_category_id")
    private List<Category> subcategories;


    @ManyToOne
    @JsonBackReference
    @JoinColumn(name = "parent_category_id")
    private Category parentCategory;

    public List<Product> getProducts() {
        List<Product> list = this.products;
        this.getSubcategories().forEach(category -> category.getProducts().forEach(list::add));
        return list;
    }

}
