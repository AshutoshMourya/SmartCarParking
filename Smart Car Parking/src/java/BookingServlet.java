/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class BookingServlet extends HttpServlet {

   public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  

//    String bookid=request.getParameter("bookid"); 
    String uid=request.getParameter("userid");  
    String uname=request.getParameter("username");
    String parkid=request.getParameter("parkid");  
    String vno=request.getParameter("vno");  
    String sno=request.getParameter("sno"); 
    String fromd=request.getParameter("fromd");
    String fromt=request.getParameter("fromt");
    String tilld=request.getParameter("tilld");
    String tillt=request.getParameter("tillt");
    String contact=request.getParameter("contact");
    String paymode=request.getParameter("paymode");
    String upi=request.getParameter("upi");
    String fromtime = fromt + ":00";
    String totime = tillt+":00";
    try{  
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smartparking","root","root");  
    if (paymode.equals("UPI")){
    PreparedStatement ps=con.prepareStatement("insert into booking (userID, username, parkID, vehicleNo, spotNo, validFromDate, validFromTime, validTillDate, validTillTime, contact,payMode, upi) values(?,?,?,?,?,?,? ,?,?,?,?,?)");  
 
    ps.setString(1, uid);  
    ps.setString(2, uname);  
    ps.setString(3, parkid); 
    ps.setString(4, vno);
    ps.setString(5, sno);
    ps.setString(6, fromd);
    ps.setString(7, fromtime);
    ps.setString(8, tilld);
    ps.setString(9, totime);
    ps.setString(10, contact);
    ps.setString(11, paymode);
    ps.setString(12, upi);

    int i=ps.executeUpdate();  
    if(i>0) { 
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Booking Successful!!');");
        out.println("location='invoice.jsp';");
        out.println("</script>");}

    }
    else{
           PreparedStatement ps=con.prepareStatement("insert into booking (userID, username, parkID, vehicleNo, spotNo, validFromDate, validFromTime, validTillDate, validTillTime, contact,payMode) values(?,?,?,?,?,?,? ,?,?,?,?)");  
 
    ps.setString(1, uid);  
    ps.setString(2, uname);  
    ps.setString(3, parkid); 
    ps.setString(4, vno);
    ps.setString(5, sno);
    ps.setString(6, fromd);
    ps.setString(7, fromtime);
    ps.setString(8, tilld);
    ps.setString(9, totime);
    ps.setString(10, contact);
    ps.setString(11, paymode);

    int i=ps.executeUpdate();  
    if(i>0)  {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Booking Successful!!');");
        out.println("location='invoice.jsp;");
        out.println("</script>");}

    } 
            }
   
    catch (Exception e2) 
    {
        System.out.println(e2);
    }  

    out.close();  
    }  
}
