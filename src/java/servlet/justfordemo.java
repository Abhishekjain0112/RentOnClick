/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.QueryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Query;
import model.User;

/**
 *
 * @author Abhishek
 */
public class justfordemo extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Query</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Query at   </h1>");
            
            
            Query q=new Query();
            String query;
          int uui;
            User u=new User();
               HttpSession session = request.getSession();
              uui=(Integer)session.getAttribute("userId");
            u.setUserid(uui);
            
            query=request.getParameter("text");
            
            
            q.setUser(u);
            q.setQuery(query);
            
              out.println("<h1> fire  Query    uid :"+ uui+ "</h1>");
            QueryDAO qd=new QueryDAO();
            if(qd.addQuery(q))
            {
                  out.println("<h1>Servlet Query at   </h1>");
            session.setAttribute("msg","Query is Submited \n You Will Get Reply As Fast As Posible");
            response.sendRedirect("result.jsp");
            }else{
            
            }
            
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e){
        e.printStackTrace();
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
