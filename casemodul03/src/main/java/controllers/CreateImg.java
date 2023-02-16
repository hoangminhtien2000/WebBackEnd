package controllers;

import model.Imgs;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/createImg")
public class CreateImg extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int product_id = Integer.parseInt(req.getParameter("product_id"));
        String url_img = req.getParameter("url_img");
        productService.saveImg(new Imgs( url_img,product_id));
        req.setAttribute("id",new Imgs( url_img,product_id));
        RequestDispatcher dispatcher = req.getRequestDispatcher("/product/createWarehouse.jsp");
        dispatcher.forward(req, resp);
    }
}
