package controllers;

import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/deletes")
public class Delete extends HttpServlet {
    ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int product_id = Integer.parseInt(req.getParameter("product_id"));
        String url_img = req.getParameter("url_img");
        int warehouse_id = Integer.parseInt(req.getParameter("quantity"));
        productService.deleteImg(url_img,product_id);
        productService.deleteWarehouse(warehouse_id,product_id);
        productService.deleteProduct(product_id);
        resp.sendRedirect("/products");
    }
}
