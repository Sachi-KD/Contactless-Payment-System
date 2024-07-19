/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AuthorityAndAuthentication;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Models.RegisterModelHandle;
import Operations.SQLOperations;
import Operations.Validations;

/**
 *
 * @author sachi
 */
@WebServlet(name = "registerServlet", urlPatterns = {"/registerServlet"})
public class registerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RegisterModelHandle Model = new RegisterModelHandle();
        
        Model.setUserName(request.getParameter("username"));
        Model.setPassWord(request.getParameter("password"));
        String conPass = request.getParameter("confpassword");
        String errorMessage = "";
        if (Model.getPassWord() == null || Model.getPassWord().trim().isEmpty() || conPass == null || conPass.trim().isEmpty()) {
            errorMessage = "Password or Username fields cannot be empty.";
            // Set error message in request attribute
            request.setAttribute("errorMessage", errorMessage);

            // Forward the request to the JSP for displaying the message
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } else if (Model.getPassWord().length() < 4) {
            errorMessage = "Password must be at least 4 characters long.";
            // Set error message in request attribute
            request.setAttribute("errorMessage", errorMessage);

            // Forward the request to the JSP for displaying the message
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        }
        else if(conPass.equals(Model.getPassWord())){
            SQLOperations sqlOp = new SQLOperations();
            sqlOp.createAccount(Model.getUserName(), Model.getPassWord());

            response.setContentType("text/html");

            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\">");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Your Account is SuccessFully Create</h1>");
            out.println("<p>Now you can login with your Username and Password using.</p>");
            out.println("<a href='index.jsp'>Go Login Page</a>");
            out.println("</body>");
            out.println("</html>");
        }else {
            errorMessage = "Your Password and Confirm Password is not matched";
            // Set error message in request attribute
            request.setAttribute("errorMessage", errorMessage);

            // Forward the request to the JSP for displaying the message
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
