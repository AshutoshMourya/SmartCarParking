<%-- 
    Document   : ac
    Created on : 2 Mar, 2020, 12:11:06 AM
    Author     : Hp
--%>
<!DOCTYPE html>
<html>
<head>
  <title>CS Parking</title>
  <link rel="icon" href="img/logo1.png">
  <link rel="stylesheet" href="stylesheets/mapstyle.css">

  <style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], input[type=password], input[type=date], input[type=time], input[type=tel], input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}


#print {
  background-color: #7575a3;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

#print:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

.modal {
  display: none; 
  position: fixed; 
  z-index: 1; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0,0.4);
  padding-top: 60px;
}

.modal-content {
  background-color: #d9b38c;
  margin: 5% auto 15% auto; 
  border: 3px solid black;
  border-radius: 3%;
  width: 50%; 
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
    img{
      width: 250px;
      height: 250px;
    }
    table{
      border-spacing: 150px 15px;
      border: 2px solid sandybrown;
    }
    td{
      border: 5px solid orange;
      height: 100px;
      background-color: sandybrown;
    }
  </style>
</head>
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
  <h2>CS Department Parking</h2>
  <h3>Parking ID : 02</h3>
  <br><br>
  <table align="center" width="80%" >
    <tr>
      <td>
        <input type="radio" id="02" name="spot">
        <label for="01">Spot-01</label>
      </td>

      <td>
        
        <input type="radio" id="03" name="spot">
        <label for="01">Spot-02</label>
      </td>
    </tr>
    <tr>
      <td>
        
        <input type="radio" id="03" name="spot">
        <label for="01">Spot-03</label>
      </td>

      <td>
      
        <input type="radio" id="04" name="spot">
        <label for="01">Spot-04</label>
      </td>
    </tr>
    <tr>
      <td>
        <input type="radio" id="05" name="spot">
        <label for="01">Spot-05</label>
      </td>
  
      <td>
        <input type="radio" id="06" name="spot">
        <label for="01">Spot-06</label>
      </td>
    </tr>
    <tr>
      <td>
        <input type="radio" id="07" name="spot">
        <label for="01">Spot-07</label>
      </td>

      <td>
        <input type="radio" id="08" name="spot">
        <label for="01">Spot-08</label>
      </td>
    </tr>
    <tr>
      <td>

        <input type="radio" id="09" name="spot">
        <label for="01">Spot-09</label>
      </td>
      <td>

        <input type="radio" id="10" name="spot">
        <label for="01">Spot-10</label>
      </td>
    </tr>
    <tr>
      <td>

        <input type="radio" id="11" name="spot">
        <label for="01">Spot-11</label>
      </td>
      <td>
        <input type="radio" id="12" name="spot">
        <label for="01">Spot-12</label>
      </td>
    </tr>
  </table>
  <br><br>
  <div style="text-align: center;" id="id_book">
    <a href="#" class="book" onclick="document.getElementById('id01').style.display='block'"">Book Now</a>
  </div>
  <div id="id01" class="modal">
  
  
    <form class="modal-content animate" action="BookingServlet" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>
  
      <div class="container">
        <h2>Receipt info</h2>
<!--        <label for="bookid"><b>Booking ID</b></label><br>
        <input type="text" placeholder="Enter Booking ID" name="bookid" required><br>-->
        <label for="userid"><b>User ID</b></label><br>
        <input type="text" placeholder="Enter User ID" name="userid" required><br>
        <label for="userid"><b>Username</b></label><br>
        <input type="text" placeholder="Enter Username" name="username" required><br>
        <label for="parkid"><b>Parking ID</b></label><br>
        <input type="text" placeholder="Enter Parking ID" name="parkid" required><br>
        <label for="vno"><b>Vehicle Number</b></label><br>
        <input type="text" placeholder="Enter Vehicle Number" name="vno" required><br>
        <label for="sno"><b>Spot Number</b></label><br>
        <input type="number" placeholder="Enter Spot Number" name="sno" required><br>
       <label for="from"><b>Valid From</b></label><br>
        <input type="date" placeholder="Enter Arrival Date" name="fromd" required><br>
        <input type="time" placeholder="Enter Arrival Time" name="fromt" required><br>
        <label for="to"><b>Valid Till</b></label><br>
        <input type="date" placeholder="Enter Departure Date" name="tilld" required><br>
        <input type="time" placeholder="Enter Departure Time" name="tillt" required><br>
        <label for="contact"><b>Contact</b></label><br>
        <input type="tel" placeholder="Enter Contact Number" name="contact" required>  <br>
        <label for="paymode"><b>Payment Mode</b></label><br>
        <input type="radio" id="chkCash" name="paymode" onclick="cashPay()" value="Cash"/>
        <label for="chkCash">Cash</label>
        <input type="radio" id="chkUPI" name="paymode" onclick="ShowHideDiv()" value="UPI"/>
        <label for="chkUPI">UPI</label><br>
        <div id="dvupi" style="display: none">
          <label for="upi"><b>UPI ID</b></label>
          <input type="text" placeholder="upi@smartpark" name="upi"><br>
        </div>
        <br>
        <button type="submit" id= "print" onclick="location.href='invoice.jsp'">Print</button>
      </div>
  
      <div class="container" style="background-color:#f1f1f1">
    
      </div>
    </form>
  </div>
  
  <script>
  // Get the modal
  var modal = document.getElementById('id01');
  
  // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
   // on clicking radio button for upi perform this
   function ShowHideDiv() {
        var chkupi = document.getElementById("chkUPI");
        var dvupi = document.getElementById("dvupi");
        dvupi.style.display = chkupi.checked ? "block" : "none";
    }
  
    function cashPay(){
      alert("Cash to be paid at Parking Counter")
      document.getElementById('dvupi').style.display ='none';
    }
  </script>
  
  <br><br><br>
</body>
</html>