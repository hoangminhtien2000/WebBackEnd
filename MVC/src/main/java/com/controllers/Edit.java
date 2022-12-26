package com.controllers;

import com.models.ListProduct;
import com.models.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/edits")
public class Edit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        Product product= ListProduct.findById(id);
        req.setAttribute("e",product);
        RequestDispatcher dispatcher=req.getRequestDispatcher("/edit.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        String img=req.getParameter("img");
        int price= Integer.parseInt(req.getParameter("price"));
        boolean status= Boolean.parseBoolean(req.getParameter("status"));
        int index =ListProduct.findByIndexID(id);
        ListProduct.products.set(index,new Product(id,name,img,price,status));
        resp.sendRedirect("products");
    }
}
