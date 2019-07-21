/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.AdminDAO;
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
import model.Admin;
import model.User;

/**
 *
 * @author Abhishek
 */
public class Adminlogin extends HttpServlet {

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
       PrintWriter out = response.getWriter();
        
        try  {
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Adminlogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Adminlogin </h1>");
            
              String email,password;
            Admin a=new Admin();
            AdminDAO ad=new AdminDAO();
            
            UserDAO ud=new UserDAO();
            
            User u1=new User();
            u1.setUserid(1);
            
            User u =ud.viewProfile(u1);
            
                 email =request.getParameter("email");
                 password=request.getParameter("password");
                 
            a.setEmail(email);
            a.setPasssword(password);
            
           
           
           
            //password=u.getPassword();
        
            
            
            out.println("<h1>before Login </h1>");
            if(ad.login(a))
            {
                
                
                
                out.println("<br><h1>after Login </h1>");
            out.println("  <br>Valid username password  " +u);
                 out.println("\n <br>");
                         out.println("count :  ");
                Cookie c=new Cookie("emal", email);
               Cookie c1=new Cookie("password",password);
               
                HttpSession session = request.getSession();
               
                
                session.setAttribute("email",email);
                session.setAttribute("name", u.getName());
                
                session.setAttribute("password",password);
                session.setAttribute("userId",u.getUserid());
                session.setAttribute("uid",u.getUserid());
                
                session.setAttribute("wallet", u.getWallet());
                session.setAttribute("phone", u.getPhone());
                session.setAttribute("address", u.getAddress());
                session.setAttribute("dob", u.getDate());
                session.setAttribute("gender", u.getGender());
            
                session.setAttribute("user", u);
                
                session.setAttribute("availablecount",0);
                PlaceDAO pd=new PlaceDAO();
               int count= pd.countNumberOfPlaces(Integer.toString(u.getUserid()));
                
                         out.println("count :  ");
            out.println("<br>");
               
               out.println(count);
                
               session.setAttribute("count",count);
 
                response.sendRedirect("AdminHome.jsp");
                
                
            }
            else{
                out.println("<br><h1>not Allow </h1>");
                
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
