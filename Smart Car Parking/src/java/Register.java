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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class Register extends HttpServlet {

 public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  

    String uid=request.getParameter("userid");  
    String uname=request.getParameter("username");
    String email=request.getParameter("email");  
    String pass=request.getParameter("password");  
    String contact=request.getParameter("mobile"); 
    String licenseNo=request.getParameter("license");

    try{  
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smartparking","root","root");  

    PreparedStatement ps=con.prepareStatement("insert into user (uid, uname, email, pass, contact, licenseNo) values(?,?,?,?,?,?)");  

    ps.setString(1, uid);  
    ps.setString(2, uname);  
    ps.setString(3, email);  
    ps.setString(4, pass); 
    ps.setString(5, contact);
    ps.setString(6, licenseNo);

    int i=ps.executeUpdate();  
    if(i>0)  
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Succesfully Registered. Sign In Now!!');");
        out.println("location='sign_in.jsp';");
        out.println("</script>");

    }
    catch (Exception e2) 
    {
        System.out.println(e2);
    }  

    out.close();  
    }  
  
}
