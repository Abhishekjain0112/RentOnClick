/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.PlaceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Available;
import model.Place;

/**
 *
 * @author Abhishek
 */
public class AddAvailablelogic extends HttpServlet {
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
            out.println("<title>Servlet AddAvailablelogic</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Add Availables  </h1>");
           
            String cost,endTime,startTime,duration,date;
            int placeid,uid;
            
            Place place=new Place();
        
        
     
         HttpSession session = request.getSession();
                 
            placeid=Integer.parseInt(request.getParameter("placeid"));
            place.setPlaceid(placeid);
            
            
            uid=(Integer)session.getAttribute("uid");
         
         String placename=request.getParameter("placename");
           
         cost=request.getParameter("cost");
         duration=request.getParameter("duration");
         
         String day = request.getParameter("day");
	String month = request.getParameter("month");
	String year =request.getParameter("year");
        date = day+"-"+month+"-"+year;   
         
        String hh,hh2,mm,mm2,am,am2;
        
        hh=request.getParameter("hh");
        mm=request.getParameter("mm");
        am=request.getParameter("am");
    
        startTime=hh+":"+mm+" "+am;
        
        hh2=request.getParameter("hh2");
        mm2=request.getParameter("mm2");
        am2=request.getParameter("am2");
    
        endTime=hh2+":"+mm2+" "+am2;
        
              
            Available avi=new Available();
            
            avi.setCost(cost);
            avi.setDate(date);
            avi.setDuration(duration);
            avi.setP(place);
            avi.setUserid(uid);
            avi.setStartTime(startTime);
            avi.setEndTime(endTime);
        
            PlaceDAO pd=new PlaceDAO();
           if(pd.addAvailable(avi))
           {
               out.println("<h1> yes  </h1>");
               session.setAttribute("availablecount",5);
               response.sendRedirect("showAddAvailable.jsp");
           
           }else
               out.println("<h1> No  </h1>");
              out.println("</body>");
              out.println("</html>");
        }
        catch(Exception E)
        {
        E.printStackTrace();
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
