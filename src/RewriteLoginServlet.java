/*
 * SessionLoginServlet.java
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RewriteLoginServlet extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String id = request.getParameter("user");
        String pw = request.getParameter("password");
        
        RequestDispatcher dispatcher;
                
        if ( id.equals("duke") && pw.equals("duke") ) {
            HttpSession session = request.getSession(true);
            session.setAttribute("userId", id);
            
            dispatcher = request.getRequestDispatcher("welcome.jsp");

        } else {
            request.setAttribute("errorMsg", "아이디와 비밀번호가 일치하지 않습니다.");
            dispatcher = request.getRequestDispatcher("login.jsp");
        }
        
        dispatcher.forward(request, response);        
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
