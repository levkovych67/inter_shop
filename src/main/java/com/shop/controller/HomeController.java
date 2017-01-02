package com.shop.controller;


import com.shop.dao.CategoryDao;
import com.shop.dao.ProductDao;
import com.shop.dao.UserDao;
import com.shop.dao.impl.ProductDaoImpl;
import com.shop.dao.impl.UserDaoImpl;
import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.entity.User;
import com.shop.service.ProductService;
import com.shop.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;


@Controller

public class HomeController {

    @Autowired
    ProductService productService;

    @RequestMapping("/")
    public String homePage() {
        return "index";
    }

    @RequestMapping("/404")
    public String pageNotFound() {
        return "common/404";
    }


}






