/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hp
 */
public class Login extends HttpServlet {
        public static final String CONTENT_TYPE = "text/html; charset=UTF-8";
    
    private static Connection con;
    private String psw;
    private String username;
    private static final String database_url = "jdbc:mysql://localhost:3306/smartparking";
    private static final String db_user = "root";
    private static final String db_psw = "root";
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType(CONTENT_TYPE);
            PrintWriter out = response.getWriter();
            
            username = request.getParameter("username");
            psw = request.getParameter("password");
            
            boolean result = checkPassword(username, psw, request);
            System.out.println(result);
            
            
            if(result == true){
                response.sendRedirect("home.jsp");
            }
            else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('UserName or Password incorrect');");
                out.println("location='sign_in.jsp';");
                out.println("</script>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    protected boolean checkPassword(String username, String psw, HttpServletRequest request) throws SQLException {
            String correctPassword = null;
            try{
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection(database_url,db_user,db_psw);
                    con.setAutoCommit(true);
            }   
                catch (Exception e) {
                    System.out.println("Connection failed: " + e.toString());
                }
                
                Statement st = con.createStatement();
                st.executeQuery("select pass, uname from user where uid = '"+username+"'");
                ResultSet rs = st.getResultSet();

                if (rs.next()){
                    correctPassword = rs.getString(1);
                    String uid = rs.getString(2);
                    HttpSession session = request.getSession();
                    session.setAttribute("user", uid);
                    
                }
                st.close();
                
                if (correctPassword.equals(psw)){
                    return true;
                }
                else{
                    return false;
                }
                
              }
            catch(Exception e){
                System.out.println("Exception in"
                        + " verifyPassword()=" + e.toString());
                return false;
            }
    }


}
