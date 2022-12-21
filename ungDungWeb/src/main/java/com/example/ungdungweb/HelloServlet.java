package com.example.ungdungweb;

import java.io.*;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//@WebServlet(name = "nowday", value = "/nowday")
//@WebServlet(name = "Login", value = "/login")
//@WebServlet(name = "ConverterServlet", value = "/convert")
@WebServlet(name = "TranslateServlet", urlPatterns = "/translate")
public class HelloServlet extends HttpServlet {

//    @Override
//    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//        // Hello
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        Date today =new Date();
//        out.println("<h1 style=\"color: blue\">" + today + "</h1>");
//        out.println("</body></html>");
//    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        PrintWriter writer = response.getWriter();
//        writer.println("<html>");
//
//        if ("admin".equals(username) && "admin".equals(password)) {
//            writer.println("<h1>Welcome " + username + " to website</h1>");
//        } else {
//            writer.println("<h1>Login Error</h1>");
//        }
//
//        writer.println("</html>");
//    }

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        float rate = Float.parseFloat(request.getParameter("rate"));
//        float usd = Float.parseFloat(request.getParameter("usd"));
//
//        float vnd = rate * usd;
//
//        PrintWriter writer = response.getWriter();
//        writer.println("<html>");
//        writer.println("<h1>Rate: " + rate + "</h1>");
//        writer.println("<h1>USD: " + usd + "</h1>");
//        writer.println("<h1>VND: " + vnd + "</h1>");
//        writer.println("</html>");
//    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("knife", "dao");
        dictionary.put("computer", "Máy tính");

        String search = request.getParameter("txtSearch");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");

        String result = dictionary.get(search);
        if(result != null){
            writer.println("Word: " + search);
            writer.println("Result: " + result);
        } else {
            writer.println("Not found");
        }

        writer.println("</html>");
    }

}
