package com.shop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageController {


    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public
    String uploadFileHandler(@RequestParam("file") MultipartFile file) {

        return "redirect: /";
    }


}
