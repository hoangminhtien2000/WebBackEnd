package com.controllers;

import com.models.ListProduct;
import com.models.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/create")
public class ProductServletCreate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        String img=req.getParameter("img");;
        int price= Integer.parseInt(req.getParameter("price"));;
        boolean status= Boolean.parseBoolean(req.getParameter("status"));
        ListProduct.products.add(new Product(id,name,img,price,status));
        resp.sendRedirect("/products");
    }
}
