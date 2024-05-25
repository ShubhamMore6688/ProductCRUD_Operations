package com.java.product.controller;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;


import com.java.product.doa.ProductDoa;
import com.java.product.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductDoa productDoa;



    @RequestMapping("/")
    public String home(Model m){
        List<Product> products = this.productDoa.getAllProducts();
        m.addAttribute("products", products);
        return "home";
    }

    @RequestMapping("/product")
    public String handle(){

        return "product";
    }

    @RequestMapping(path = "/add", method = RequestMethod.POST)
    public RedirectView addProduct(@ModelAttribute Product product, HttpServletRequest request){
        this.productDoa.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }

    @RequestMapping(path = "/delete/{productId}")
    public RedirectView deleteProduct( @PathVariable("productId") int prouductId,  HttpServletRequest request){
        this.productDoa.deleteProduct(prouductId);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");

        return redirectView;
    }

    @RequestMapping("/update/{productId}")
    public String viewUpdateProduct(@PathVariable("productId") int productId, Model m){
        Product product = this.productDoa.getProduct(productId);
        m.addAttribute("product",product );
        return "update";
    }

    @RequestMapping(path = "/updateproduct", method = RequestMethod.POST)
    public RedirectView updateProduct(@ModelAttribute Product product, HttpServletRequest request){
        System.out.println("update product");
        System.out.println(product);
        this.productDoa.updateProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }

    
}
