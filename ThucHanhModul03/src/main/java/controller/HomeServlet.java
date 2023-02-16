package controller;



import config.EmployeDao;

import model.Employe;
import service.ClassRoomService;
import service.EmployeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    EmployeService employeService = new EmployeService();
    ClassRoomService classRoomService = new ClassRoomService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action == null) {
            action = "";
        }
        RequestDispatcher requestDispatcher;
        switch (action) {
            case "create":
                req.setAttribute("listClass", classRoomService.getAll());
                requestDispatcher = req.getRequestDispatcher("/view/createEmploye.jsp");
                requestDispatcher.forward(req, resp);
                break;

            case "edit":

                break;

            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                employeService.deleteByID(id);
                req.setAttribute("listHV", employeService.getAll());
                requestDispatcher = req.getRequestDispatcher("/view/showEmploye.jsp");
                requestDispatcher.forward(req, resp);
                break;
            default:
                req.setAttribute("listHV", employeService.getAll());
                requestDispatcher = req.getRequestDispatcher("/view/showEmploye.jsp");
                requestDispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action == null) {
            action = "";
        }

        RequestDispatcher requestDispatcher;

        switch (action) {
            case "create":
                String name = req.getParameter("name");
                String email = req.getParameter("email");
                String address = req.getParameter("address");
                String phone = req.getParameter("phone");
                Double salary= Double.valueOf(req.getParameter("salary"));
                int idDepartment = Integer.parseInt(req.getParameter("idDepartment"));
                System.out.println(req.getParameter("date"));
                employeService.save(new Employe(name,email,address,phone,salary,idDepartment));
                resp.sendRedirect("/home");
                break;

            case "edit":
                showEditForm(req, resp);
                break;


            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                Employe employe = findById(id);
                req.setAttribute("student", employe);
                RequestDispatcher dispatcherd = req.getRequestDispatcher("/view/delete.jsp");
                dispatcherd.forward(req, resp);
                break;

            case "search":
                String nameSearch = req.getParameter("search");
                req.setAttribute("listHV", employeService.findByName(nameSearch));
                requestDispatcher = req.getRequestDispatcher("/view/showEmploye.jsp");
                requestDispatcher.forward(req, resp);
                break;
        }

    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Employe employe = findById(id);
        RequestDispatcher dispatcher;
        if (employe == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("student", employe);
            dispatcher = request.getRequestDispatcher("/view/edit.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Employe findById(int id) {
        for (Employe st : EmployeDao.getAll()
        ) {
            if (st.getId() == id) {
                return st;
            }
        }
        return null;
    }
}
