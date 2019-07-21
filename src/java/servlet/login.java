/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.PlaceDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Abhishek
 */
public class login extends HttpServlet {

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
        
        try  {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            
              HttpSession session = request.getSession();
            
            
            String email,password;
            User u=new User();
            email =request.getParameter("email");
            password=request.getParameter("password");
         
              u.setEmail(email);
            u.setPassword(password);
         
                         out.println(" <br>");
 
            User us=null;
            UserDAO ud=new UserDAO();
                    
            us=ud.login(u);
            
            if(us!=null)
            {
                    
            out.println("  Valid username password  " +us );
                 out.println("<br>");
                   out.println("count :  ");
                Cookie c=new Cookie("emal", email);
               Cookie c1=new Cookie("password",password);
               
              
               
                
                session.setAttribute("email",email);
                session.setAttribute("name", us.getName());
                
                session.setAttribute("password",password);
                session.setAttribute("userId",us.getUserid());
                session.setAttribute("uid",us.getUserid());
                
                session.setAttribute("wallet", us.getWallet());
                session.setAttribute("phone", us.getPhone());
                session.setAttribute("address", us.getAddress());
                session.setAttribute("dob", us.getDate());
                session.setAttribute("gender", us.getGender());
            
                session.setAttribute("user", us);
                
                session.setAttribute("availablecount",0);
                PlaceDAO pd=new PlaceDAO();
               int count= pd.countNumberOfPlaces(Integer.toString(us.getUserid()));
                
                         out.println("count :  ");
            out.println("<br>");
               
               out.println(count);
                
               session.setAttribute("count",count);
 
               response.sendRedirect("home.jsp");
            
            
            
            }
            else{
            out.println("in valide");
            session.setAttribute("msg","You are invalid User ");
            response.sendRedirect("result.jsp");
            
            
            
            }
            
            
            
            
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
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
