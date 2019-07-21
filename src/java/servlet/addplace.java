/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.PlaceDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.ForPlaceImage;
import model.Place;
import model.User;
import sun.security.pkcs11.wrapper.Functions;

/**
 *
 * @author Abhishek
 */


@MultipartConfig(maxFileSize = 16177215)
public class addplace extends HttpServlet {

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
            out.println("<title>Servlet addplace f </title>");            
            out.println("</head>");
            out.println("<body>");
       
            
            
            String placename,placetype,landmark,city,state,address,noOfRooms,Type;
            String typeOfCustomer1,typeOfCustomer2;
               
           placename=request.getParameter("placename");
            placetype=request.getParameter("placetype");
            landmark=request.getParameter("landmark");
            city=request.getParameter("city");
            state=request.getParameter("state");
            address=request.getParameter("address");
            noOfRooms=request.getParameter("noOfRooms");
            Type=request.getParameter("Type");
            typeOfCustomer1=request.getParameter("typeOfCustomer1");
            typeOfCustomer2=request.getParameter("typeOfCustomer2");
            
            String descryption ="number of rooms :"+noOfRooms+"  Type  :"+Type;
	    
                       Part image1,image2;
           image1=request.getPart("image1");
           image2=request.getPart("image2");
       
            InputStream img1,img2;
            img1=image1.getInputStream();
            img2=image2.getInputStream();
            
            
             HttpSession session = request.getSession();
              int userid=(int)session.getAttribute("userId");
                out.println("<br><h1>uid  " + userid+ "</h1>");
            int  count=(int)session.getAttribute("count");
               
              out.println("<br><h1>count  " + count+ "</h1>");
           
              String email=(String)session.getAttribute("email");
           
                out.println("<br><h1>email  " + email+ "</h1>");
              
           out.println("hsdjfk");

           Place p =new Place();
            
            User u=new User();
            u.setUserid(userid);
            
            p.setUser(u);
            p.setEmailid(email);
            p.setPlacename(placename);
            p.setPlacetype(placetype);
            p.setAddress(address);
            p.setCity(city);
            p.setState(state);
            p.setLandmark(landmark);
            p.setDescription(descryption);
            p.setCustomertype1(typeOfCustomer1);
            p.setCustomertype2(typeOfCustomer2);
            p.setCount(Integer.toString(count));
            p.setImage1(img1);
            p.setImage2(img2);
              
            out.println("<br> Place : ");
         out.print(p);
                    
                PlaceDAO pd=new PlaceDAO();
            
                if(pd.addPlace(p))
                {
                  out.println("<br><h1>Data is succesfully inserted </h1>");  
                    ForPlaceImage fpi=null;
                    
                fpi=pd.getPlaceImageFromDataBase(p);
                
                if(fpi!=null)
                {
                  out.print("<br><h1>  Fpi :  "+fpi+"  </h1>");
                  p.setPlaceid(fpi.getPlaceid());
                  session.setAttribute("currentplace",p);
                  session.setAttribute("imageforplace",fpi);
                  
                  response.sendRedirect("downplaceImage.jsp");
                  
                  
                }
                else{
                 out.print("<br><h1> No image is found  here  </h1>");
                }
                
                }
                else{
                  out.println("<br><h1>Not inserted </h1>");  
                
                }
                
            out.println("<h1>Servlet addplace at " + request.getContextPath() + "</h1>");
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
