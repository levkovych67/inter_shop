package com.shop.dao.impl;


import com.shop.dao.ProductDao;
import com.shop.entity.Category;
import com.shop.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;


@Repository
public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Product> getProductsWithPriceFromTo(Double startingPrice, Double endPrice) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Product where price between :startingPrice and  :endPrice ")
                .setParameter("startingPrice", startingPrice)
                .setParameter("endPrice", endPrice)
                .list();
    }


    @Override
    public List<Product> getProductsByTitle(String title) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Product where title like '%" + title + "%'  ").list();
    }

    @Override
    public void deleteById(Long id) {
        Session session = sessionFactory.getCurrentSession();
        session.createQuery("delete from Product where id  =  :id").setParameter("id", id).executeUpdate();
    }

    @Override
    public List<Product> getPaginatedProducts(Integer pageSize, Integer pageNumber) {
        Integer lambda = pageSize * (pageNumber - 1);
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Product").setFirstResult(lambda).setMaxResults(pageSize).list();
    }

    @Override
    public List<Product> getPaginatedProductsByCategory(Long categoryId, Integer pageSize, Integer pageNumber) {
        Integer lambda = pageSize * (pageNumber - 1);
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Product where category_id =:categoryId").setParameter("categoryId",categoryId).setFirstResult(lambda).setMaxResults(pageSize).list();
    }
}
