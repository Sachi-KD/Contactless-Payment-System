/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AuthorityAndAuthentication;

import GenerateQrCode.CreateQr;
import Models.Event;
import Operations.ConnectionJDBC;
import Operations.EventHandle;
import Operations.SQLOperations;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.sql.Statement;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sachi
 */
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

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
            out.println("<title>Servlet loginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        SQLOperations ops = new SQLOperations();
        int Password = 0;

        // Perform password validation (example: simple length check)
        String errorMessage = "";
        if (password == null || password.trim().isEmpty() || username == null || username.trim().isEmpty()) {
            errorMessage = "Password or Username cannot be empty or Cannot Identify";
            // Set error message in request attribute
            request.setAttribute("errorMessage", errorMessage);

            // Forward the request to the JSP for displaying the message
            request.getRequestDispatcher("index.jsp?error=1").forward(request, response);
        } else if (password.length() < 4) {
            errorMessage = "Password must be at least 4 characters long.";
            // Set error message in request attribute
            request.setAttribute("errorMessage", errorMessage);

            // Forward the request to the JSP for displaying the message
            request.getRequestDispatcher("index.jsp?error=1").forward(request, response);
        } else {
            Password = ops.GetAndStorePass(username, password);
            if (Password == 2 || Password == 5) {
                // Create a session
                HttpSession session = request.getSession(true);
                // Set session attribute
                session.setAttribute("userId", ops.getUserId());
                session.setAttribute("username", username);
                session.setAttribute("password", password);
                session.setAttribute("DateTime", ops.getDateTimeReg());
                session.setAttribute("Role", ops.getRole());

                // Create a cookie for the username
                Cookie usernameCookie = new Cookie("username", username);
                Cookie usernameCookie1 = new Cookie("password", password);
                usernameCookie.setMaxAge(24 * 60 * 60); // 1 day
                response.addCookie(usernameCookie);
                response.addCookie(usernameCookie1);

                /*ServletContext context = getServletContext();
                String filePath = context.getRealPath("/assets/QrImage/JD.png");

                File file = new File(filePath);

                if (file.exists()) {
                    // File exists, you can proceed with your logic here
                    ops.imageUpload(username, filePath);
                } else {
                    // File does not exist, handle this case
                    System.out.println("File not found: " + filePath);
                }*/
                if (Password == 2) {
                    response.sendRedirect("EventManager.jsp");
                } else if (Password == 5) {

                    EventHandle eve = new EventHandle();
                    eve.AddEventList();
                    request.setAttribute("events", eve.events);

                    CreateQr crQr = new CreateQr("Deleted");
                    crQr.FileDeletion();

                    RequestDispatcher dispatcher = request.getRequestDispatcher("HomePage.jsp");
                    dispatcher.forward(request, response);
                }

            } else {
                errorMessage = "Password is incorrect";
                // Set error message in request attribute
                request.setAttribute("errorMessage", errorMessage);

                // Forward the request to the JSP for displaying the message
                request.getRequestDispatcher("index.jsp?error=1").forward(request, response);
            }
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
