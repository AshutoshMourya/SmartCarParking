<%-- 
    Document   : ac
    Created on : 2 Mar, 2020, 12:11:06 AM
    Author     : Hp
--%>
<!DOCTYPE html>
<html>
<head>
  <title>Main Parking</title>
  <link rel="icon" href="img/logo1.png">
  <link rel="stylesheet" href="stylesheets/mapstyle.css">
  <style>
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
      <a href="index.jsp">Home</a>
      <a href="sign_in.jsp">Sign In/ Sign Up</a>
    </div>
  </div>
  <h2>Main Parking</h2>
  <h3>Parking ID : 01</h3>
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
    <a href="#" class="book" onclick="book()">Book Now</a>
  </div>
  <br><br><br>
  <script src="script/map.js"></script>
</body>
</html>