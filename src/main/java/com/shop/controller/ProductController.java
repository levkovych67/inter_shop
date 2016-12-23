package com.shop.controller;


import com.shop.dto.CommentDto;
import com.shop.dto.ProductDto;
import com.shop.entity.Product;
import com.shop.service.CategoryService;
import com.shop.service.CommentService;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.validation.constraints.Null;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/product/")
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private CategoryService categoryService;


    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getProduct(Model model, @PathVariable Long id) {
        Product product = productService.findById(id);
        model.addAttribute("product", product);
        return "common/product";
    }

    @RequestMapping("/search")
    public String searchProducts(Model model, @RequestParam String title) {
        List<Product> products = productService.getProductByTitle(title);
        model.addAttribute("products", products);
        return "index";
    }

    @RequestMapping(value = "/{id}/comments", method = RequestMethod.GET)
    @ResponseBody
    public List<CommentDto> getComments(@PathVariable Long id) {
        return commentService.getCommentsByProductId(id);
    }


    @RequestMapping(value = "/{id}/comments", method = RequestMethod.POST, consumes = "application/json")
    public
    @ResponseBody
    CommentDto createComment(@RequestBody CommentDto commentDto, @PathVariable Long id) {
        commentService.createComment(id, commentDto.getContent());
        return commentDto;
    }

    @RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
    public String getProduct(@PathVariable Long id, Model model) {
        productService.deleteById(id);
        model.addAttribute("products", productService.findAll());
        return "index";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String createProduct(MultipartFile image, ProductDto productDto) throws IOException {
        productService.saveProductDto(productDto, image);

        return "redirect:/";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createProduct(Model model) {
        model.addAttribute("product", new ProductDto());
        model.addAttribute("categories", categoryService.findAll());
        return "admin/create";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String editProduct(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.findById(id));
        model.addAttribute("categories", categoryService.findAll());
        return "admin/edit";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.POST)
    public String editProduct(Product product, @RequestParam Long categoryId) {
        productService.saveProduct(product, categoryId);
        return "redirect:/product/{id}";
    }


}
