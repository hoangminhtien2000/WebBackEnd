package controllers;


import model.Products;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/editProduct")
public class EditProduct extends HttpServlet {
    ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int product_id= Integer.parseInt(req.getParameter("product_id"));
        Products product= productService.findByIdProduct(product_id);
        req.setAttribute("ep",product);
        RequestDispatcher dispatcher=req.getRequestDispatcher("/product/editProduct.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int product_id = Integer.parseInt(req.getParameter("product_id"));
        String product_name = req.getParameter("product_name");
        double price = Double.parseDouble(req.getParameter("price"));
        int size_id = Integer.parseInt(req.getParameter("size_id"));
        int color_id = Integer.parseInt(req.getParameter("color_id"));
        int type_id = Integer.parseInt(req.getParameter("type_id"));
        productService.editProduct(new Products(product_id,product_name, price, size_id, color_id, type_id));
        resp.sendRedirect("/products");
    }
}
