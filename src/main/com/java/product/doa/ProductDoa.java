package com.java.product.doa;

import com.java.product.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class ProductDoa {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void createProduct(Product product){
        this.hibernateTemplate.saveOrUpdate(product);
    }

    public List<Product> getAllProducts(){
        List<Product> products = this.hibernateTemplate.loadAll(Product.class);
        return products;
    }

    public Product getProduct(int productid){
        Product product = this.hibernateTemplate.get(Product.class, productid);
        return product;
    }

    @Transactional
    public void updateProduct(Product product){
        this.hibernateTemplate.update(product);
    }

    @Transactional
    public void deleteProduct(int productid){
        Product product = this.hibernateTemplate.get(Product.class, productid);
        this.hibernateTemplate.delete(product);
    }



}
