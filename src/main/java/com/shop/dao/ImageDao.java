package com.shop.dao;

import com.shop.entity.Comment;
import com.shop.entity.Image;

public interface ImageDao extends BaseDao<Image>{

    Image findByUrl(String url);
}
