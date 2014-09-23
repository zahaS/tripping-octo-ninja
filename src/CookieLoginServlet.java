/*
 * CookieLoginServlet.java
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CookieLoginServlet extends HttpServlet {
    
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
            Cookie userCookie = new Cookie("userId", "duke");
            Cookie testCookie = new Cookie("testMessage", "Session Management Using Cookies");
            userCookie.setMaxAge(60);  // 만약 client에 cookie를 파일로 저장하려면 설정해야 함
            testCookie.setMaxAge(60);  // 단위는 초
            response.addCookie(userCookie); // Cookie를 응답헤더에 붙인다.
            response.addCookie(testCookie);
            
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
