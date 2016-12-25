package com.shop.service;

import com.shop.dao.UserDao;
import com.shop.entity.Product;
import com.shop.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService extends BaseService<User> {

    User findUserByEmail(String email);

    void save(User user);

    List<User> getUsers();

    void disableOrEnable(Long in);

    void registerNewUser(User user);

    User addProductToCart(Long productId,String userEmail);

    List<Product> getProductsInCart(String userEmail);

    List<Product> deleteProductFromCart(Long productId, String userEmail);
}
