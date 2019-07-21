/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;

/**
 *
 * @author Abhishek
 */
public class BookPlaceCart extends HttpServlet {

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
        try{
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookPlaceCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookPlaceCart </h1>");
            
            int sellerid,buyerid,availableid,placeid;
            String cost,time,date;
            
           HttpSession session = request.getSession();
              buyerid=(Integer)session.getAttribute("userId");
            
            sellerid=Integer.parseInt(request.getParameter("sellerid"));
            availableid=Integer.parseInt(request.getParameter("availableid"));
            placeid=Integer.parseInt(request.getParameter("placeid"));
            
            cost=request.getParameter("cost");
            time=request.getParameter("time");
            date=request.getParameter("date");
            
            Cart c=new Cart();
            c.setAvailableid(availableid);
            c.setBuyerid(buyerid);
            c.setSellerid(sellerid);
            c.setCost(cost);
            c.setDate(date);
            c.setUserid(buyerid);
            
            out.println("<h1>+"+sellerid+" "+ availableid+" "+"+ </h1>");
            out.println("<h1>+"+placeid+" "+ cost+" "+"+ </h1>");
            out.println("<h1>+"+time+" "+ date+" "+"+ </h1>");
            
             CartDAO cd=new CartDAO();
             
             if(cd.addToCard(c))
             {
               out.println("<h1>Product is Added To Cart</h1>");
                 if(cd.UpdateAvailableStatus(availableid))
                    out.println("<h1>Status has Update</h1>");
                 session.setAttribute("msg","Congratulation Your Place is Booked ");
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
