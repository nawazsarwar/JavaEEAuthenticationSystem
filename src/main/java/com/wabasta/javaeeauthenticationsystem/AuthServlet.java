package com.wabasta.javaeeauthenticationsystem;

import java.io.IOException;
import java.io.PrintWriter;
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
        
        String dbStoredUsername = "admin";
        String dbStoredPassword = "admin";
        
        String username, password;
        boolean authStatus = false;
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AuthServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            if(request.getParameter("inputEmail").equals(dbStoredUsername) && 
                    request.getParameter("inputPassword").equals(dbStoredPassword)){
                
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
