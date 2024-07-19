
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AuthorityAndAuthentication;

import GenerateQrCode.CreateQr;
import com.google.zxing.WriterException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sachi
 */
@WebServlet(name = "GenerateQrServlet", urlPatterns = {"/GenerateQrServlet"})
public class GenerateQrServlet extends HttpServlet {

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
            out.println("<title>Servlet GenerateQrServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GenerateQrServlet at " + request.getContextPath() + "</h1>");
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
        String EveId = request.getParameter("eventID");
        String EveName = request.getParameter("eveName");
        String EventDate = request.getParameter("eventDate");
        String ProfileId = request.getParameter("profileId");
        String QrGen = EveId + " " + EveName + " " + EventDate + " " + ProfileId + " PASS";
        try {
            Thread.sleep(5000);
            CreateQr crQr = new CreateQr(QrGen);
            boolean results = crQr.isRealesed(Integer.parseInt(ProfileId), Integer.parseInt(EveId));
            if (results == true) {
                Thread.sleep(1000);
                crQr.imageDataGet(Integer.parseInt(ProfileId), Integer.parseInt(EveId));

                Thread.sleep(2000);
                request.getRequestDispatcher("QrTicketView.jsp").forward(request, response);
            } else {
                crQr.createQr();
                Thread.sleep(1000);
                boolean result = crQr.SaveQrCode(Integer.parseInt(ProfileId), Integer.parseInt(EveId));

                Thread.sleep(2000);
                response.sendRedirect("QrTicketView.jsp");
            }

        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        //crQr.setText(QrGen);
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
