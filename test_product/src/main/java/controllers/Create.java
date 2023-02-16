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

@WebServlet(urlPatterns = "/create")
public class Create extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("c", productService.getAll());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/product/createProduct.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product_name = req.getParameter("product_name");
        String img = req.getParameter("img");
        double price = Double.parseDouble(req.getParameter("price"));
        int status = Integer.parseInt(req.getParameter("status"));
        String size = req.getParameter("size");
        String color = req.getParameter("color");
        String type = req.getParameter("type");
        productService.save(new Products(product_name, img, price, status, size, color, type));
        resp.sendRedirect("/create");
    }
}
