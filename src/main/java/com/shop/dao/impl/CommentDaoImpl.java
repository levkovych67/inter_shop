package com.shop.dao.impl;

import com.shop.dao.CommentDao;
import com.shop.entity.Comment;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository

public class CommentDaoImpl extends BaseDaoImpl<Comment> implements CommentDao {
}
