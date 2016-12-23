package com.shop.dto;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductDto {

    private String title;

    private String description;


    private Double price;

    private Long categoryId;
}
