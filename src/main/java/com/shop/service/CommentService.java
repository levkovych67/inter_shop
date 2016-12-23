package com.shop.service;

import com.shop.dto.CommentDto;
import com.shop.entity.Comment;
import com.shop.entity.Product;

import java.util.List;

public interface CommentService extends BaseService<Comment> {

    List<CommentDto> getCommentsByProductId(Long id);

    void createComment(Long productId,String content);


}
