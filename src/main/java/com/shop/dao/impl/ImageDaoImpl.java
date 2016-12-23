package com.shop.dao.impl;

import com.shop.dao.ImageDao;
import com.shop.dao.ProductDao;
import com.shop.entity.Image;
import com.shop.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ImageDaoImpl extends BaseDaoImpl<Image> implements ImageDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Image findByUrl(String url) {
        Session session = sessionFactory.getCurrentSession();
        return (Image) session.createQuery("from Image where url  =  :url").setParameter("url", url).uniqueResult();
    }
}
