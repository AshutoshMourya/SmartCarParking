<%-- 
    Document   : ac
    Created on : 2 Mar, 2020, 12:11:06 AM
    Author     : Hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <title>Invoice</title>
    <link rel="icon" href="img/logo1.png">
</head>
<style>
.header {
  overflow: hidden;
  background-color: #2D0909;
  display: block;
  margin: auto;
  position: sticky;
  width: 100%;
  top: 0;
}
.header a {
  float: left;
  color: white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
  margin-top: 25px;
}
.header img {
    height: 100px;
    width: 100px;
    margin-left: 30px;
    border: 3px solid #2D0909;
}
.header a:hover {
  background-color: #2D0909;
  border: 2px solid white;
  color: white;
  border-radius: 8px;
}
.header-right {
  float: right;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
#page-wrap { width: 1100px; margin: 0 auto; }
table#t01 th {
    background-color: #99b3ff;
    color: rgb(0, 0, 0);}
#items td.blank { border: 0; } 
        
        </style>
<body>
    <div class="header">
        <img src="img/logo1.png">
        <div class="header-right">
        <a href="home.jsp">Home</a>
          <a href="sign_in.jsp">Logout</a>
          <a href="profile.jsp">
          <% 
      if (session != null) {
         if (session.getAttribute("user") != null) {
            String username = (String) session.getAttribute("user");
            out.print( username );
         } else {
            response.sendRedirect("index.jsp");
         }
      }
      else{
          request.getRequestDispatcher("index.jsp").include(request, response); 
      }
      %>
      </a>
        </div>
      </div>
<center>
      <form action="invoice.jsp" method="post" >
          <table style="margin:5%; padding: 5%">
              
              <th colspan='2'>Enter Booking ID</th>
            
              <tr>
                  <td>Booking ID:</td>
                  <td><input type="text" placeholder="Enter Booking ID" name="bookid" required></td>
              </tr>
              <tr>
                  <td colspan='2'><input type="submit" class="button" value="Show Invoice"/></td>
              </tr>
          </table>
      </form></center>
      <%
String id = request.getParameter("bookid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "smartparking";
String userid = "root";
String password = "root";
Date date=new Date();
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement = connection.createStatement();
String sql ="select * from booking where bookingID="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    <div id="page-wrap">
<div>
    <hr color="black"><hr><center><h1>I  N  V  O  I  C  E</h1></center><hr color="black">
</div>
<hr>
<div>
    <Center><h2>#Please present this reciept or a screenshot at the gate of parking</h2></Center>
</div>

<center>
<table style="width:80%" id="t01">
    <tr>
        <td>Booking ID:</td>
        <td id="bookingID"><%=resultSet.getString("bookingID") %></td>
        <td colspan="3" rowspan="5" align="center"><img src="img/logo1.png" height=150px width=200px ></img></td>
    </tr>
    <tr>
        <td>Date:</td>
        <td id="date"><% out.print(date.toString());%> </td>
    </tr>
    <tr>
        <td>Customer Name:</td>
        <td id="customername"><%=resultSet.getString("username") %></td>
    </tr>
    <tr>
        <td>Customer ID:</td>
        <td id="customerid"><%=resultSet.getString("userID") %></td>
    </tr>
    <tr>
        <td class="blank" colspan="5" height=30></td>
    </tr>
    <tr height=35>
        <th width=120>S.No.</th>
        <th colspan="2">Description</th>
        <th colspan="2">Fare</th>
    </tr>
    <tr height=30>
        <td class="blank" rowspan="4">1.</td>
        <td width=180>Parking ID:</td>
        <td id="parkingid" width=100><%=resultSet.getString("parkID") %></td>
        <td width=180>Base Fare:</td>
        <td id="baseFare" width=100> &#8377;20</td>
    </tr>    
    <tr height=30>
        <td width=180>Parking Name:
        </td>
        <td id="parkingname" width=100>
            <%
                int pid = resultSet.getInt(4);
                Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery("select park_name from parking where park_id = "+pid);
                while(rs.next()){
                    out.print(rs.getString(1));
                }
                %>
        </td>
        <td>SGST:</td>
        <td id="sgst" width=100>2.5%</td>

    </tr>    
    <tr height=30>
        <td>Spot Number:</td>
        <td id="spotnumber" width=100><%=resultSet.getString("spotNo") %></td>
        <td>CGST:</td>
        <td id="cgst" width=100>2.5%</td>
    </tr>
    <tr height=30>
        <td>Vehicle ID:</td>
        <td id="vehiclename" width=120><%=resultSet.getString("vehicleNo") %></td>
        <td>Manitenance:</td>
        <td id="Manitenance">0.0</td>
    </tr>   
    <tr>
        <td bgcolor="#99b3ff" colspan="5" height=30>TOTAL AMOUNT: &#8377;21 </td>
    </tr>
    <tr height=30>
        <td width=50>Payment Mode:</td>
        <td id="paymentmode" colspan="4"><%=resultSet.getString("payMode") %></td>
    </tr>
    <tr height=30>    
        <td width=50>Transaction ID:</td>
        <td id="transactionid" colspan="4">
            <% 
                String paymode = resultSet.getString(8);
                if (paymode.equals("UPI"))
                {
                    out.print(resultSet.getString("upi"));
            }
                %>
        </td>
    </tr>
    <tr height=30>
            <td bgcolor="#99b3ff" colspan="5" height=30>TIMING DETAILS: </td>
    </tr>
    <tr height=30>
        <td width=50>Valid From:</td>
        <td id="validfrom" colspan="4"><%=resultSet.getString("validFromDate") %> <%=resultSet.getString("validFromTime") %></td>
    </tr>
    <tr height=30>
        <td  width=50>Valid To:</td>
        <td id="validto" colspan="4" ><%=resultSet.getString("validTillDate") %> <%=resultSet.getString("validTillTime") %></td>
    </tr>        
        
</table>
<h2># Please note that the customers are requested to vacant their slot once their time limit have expired otherwise a extra charge of &#8377 15/- woluld be fined.</h2> 
</center>
</div>
    <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>            