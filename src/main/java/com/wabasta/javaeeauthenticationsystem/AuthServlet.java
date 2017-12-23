package com.wabasta.javaeeauthenticationsystem;

import com.wabasta.MySQLDAO.MySQLConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author nawazsarwar
 */
@WebServlet(urlPatterns = {"/AuthServlet"})
public class AuthServlet extends HttpServlet {

    static Connection conn = null;
    Statement stmt = null;
    PreparedStatement pst = null;

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

        String username = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");
        boolean authStatus = false;

        conn = MySQLConnection.ConnectMySQL("test");

        if (conn != null) {
            try {
                stmt = conn.createStatement();

                String sql = "SELECT * FROM `staff` WHERE `username` = ? AND `password` = ?";
                pst = conn.prepareStatement(sql);
                pst.setString(1, username);
                pst.setString(2, password);

                ResultSet rs = pst.executeQuery();

                while (rs.next()) {
                    authStatus = true;
                    System.out.println("Enrol :" + rs.getString("enrolmentno"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(AuthServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AuthServlet</title>");
            out.println("</head>");
            out.println("<body>");

            if (authStatus) {

                HttpSession session = request.getSession();
                session.setAttribute("authStatus", 1);
                session.setAttribute("username", request.getParameter("inputEmail"));
                session.setAttribute("fullName", "John Doe");

                response.setHeader("Refresh", "5;url=dashboard.jsp");
                out.println("<center><h2>Authentication is successful. Now you are granted priviledge to access the secure area</h2></center>");
                out.println("<center><h2>You will be redirected to Dashboard in 5 secs.</h2></center>");

            } else {
                response.setHeader("Refresh", "5;url=login.jsp");
                out.println("<center><h2>Authentication failed. Login credentials don't match. <a href='login.jsp'>Go back</a> and try again.</h2></center>");
                out.println("<center><h2>You will be redirected to Login in 5 secs.</h2></center>");
            }

//            out.println("<h1>Servlet AuthServlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
