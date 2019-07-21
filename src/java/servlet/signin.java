/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.UserDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.User;

/**
 *
 * @author Abhishek
 */

@MultipartConfig(maxFileSize=1024*1024*50)
public class signin extends HttpServlet {

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
            out.println("<title>Servlet signin</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
    String name,password,gender,phone,email,address;
   
    
      String day = request.getParameter("day");
        day="5";
	String month = request.getParameter("month");
	month="05";
        String year =request.getParameter("year");
      year="2018";
    
    name=request.getParameter("name");
    password=request.getParameter("password");
    gender=request.getParameter("gender");
    phone=request.getParameter("phone");
    address=request.getParameter("address");
    email=request.getParameter("email");
   
    
        String date1 = day+"-"+month+"-"+year;
    
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd-mm-yyyy");
java.util.Date date = sdf1.parse(date1);
java.sql.Date sqlDate = new java.sql.Date(date.getTime()); 
    
   
        
 Part p=null;
            p=request.getPart("pic");    
            
            InputStream forImag=p.getInputStream();
        
        
    User us =new User();
    us.setName(name);
    us.setEmail(email);
    us.setGender(gender);
    us.setAddress(address);
    us.setPassword(password);
    us.setPhone(phone);
    us.setDate(sqlDate);
    us.setImageInputStream(forImag);
    
   // String startDate="01-02-2013";

            UserDAO ud=new UserDAO();
            
                  out.println(us);
                         out.println("<br>");
           
           
            if(ud.signUp(us))
            {
                
                         out.println("<br>");
           
                                 
                   Cookie c=new Cookie("emal", email);
               Cookie c1=new Cookie("password",password);
               
                HttpSession session = request.getSession();
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
          
                       response.sendRedirect("downlodeImage.jsp");
                         
                
            out.println("<h1>Servlet signin at Your Data has inserted properly </h1>");
                  out.println("<form action='downlodeImage.jsp' >");
                  out.println("<input type=submit name='dow' value='Downlode'>");
                  out.println("</form>");
              
            }
            else
            {
             out.println("<h1>Servlet signin at Your Data has not been inserted properly  </h1>");
            
           
            }     
    
    
    
    
            
            
            
            
            out.println("<h1>Servlet signin at " + request.getContextPath() + "</h1>");
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
