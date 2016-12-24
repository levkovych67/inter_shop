package com.shop.service.impl;

import com.shop.dao.CommentDao;
import com.shop.dao.UserDao;
import com.shop.dto.CommentDto;
import com.shop.entity.Comment;

import com.shop.entity.Product;
import com.shop.entity.User;
import com.shop.service.CommentService;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Autowired
    ProductService productService;

    @Autowired
    UserDao userDao;

    @Override
    public List<CommentDto> getCommentsByProductId(Long id) {
        Product product = productService.findById(id);
        List<CommentDto> list = new ArrayList<>();
        product.getComments().forEach(comment -> list.add(new CommentDto( comment.getUser().getFirstName(),comment.getContent())));
        return list;
    }

    @Override
    public void createComment(Long productId, String content,String userEmail) {
        Product product = productService.findById(productId);
        User user = userDao.findUserByEmail(userEmail);
        Comment comment = new Comment(user,content);
        List<Comment> comments = product.getComments();
        comments.add(comment);
        product.setComments(comments);
        productService.update(product);
    }
}
