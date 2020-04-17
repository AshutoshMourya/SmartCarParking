<%-- 
    Document   : ac
    Created on : 21 Mar, 2020, 12:11:06 AM
    Author     : Hp
--%>
<!DOCTYPE html>
<head>
  <title>Smart Car Parking</title>
  <link rel="icon" href = "img/logo1.png">
  <link rel="stylesheet" href="stylesheets/homestyle.css">

  </script>
</head>
<body>
  <div class="header">
    <img src="img/logo1.png">
    <div class="header-right">
      <a href="home.jsp">Home</a>
      <a href="aboutus.jsp">About Us</a>
      <a href="#Section">Focus</a>
      <a href="#gallery">Gallery</a>
      <a href="#contact">Contact</a>
      <!--<a href="Logout">Logout</a>-->
      <div class="dropdown">
          <a class="dropbtn">
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
          <div class="dropdown-content">
              <a href="profile.jsp">Profile</a><br>
              <a href="Logout">Logout</a>
             
          </div>
      </div>
      
    </div>
  </div>
  <div class="content" id="content">
      <br><br><br><br><br><br>
    <h1>BOOK YOUR SPOT HERE</h1>
    <br>
  <!-- <a href="afterloginslot.jsp" class="button">Show Availablity </a> -->
  <table align="center">
    <tr>
        <td><a href="after_cs.jsp" class="button">CS Department Parking </a> </td>
        <td><a href="after_lt.jsp" class="button">LT Parking </a> </td>
    </tr>
    <tr>
        <td><a href="mparkarea.jsp" class="button">Main Parking </a> </td>
        <td><a href="after_ac.jsp" class="button">Activity Center Parking </a> </td>
    </tr>
</table>
    <br>
    <h2>Need Space? </h2>
    <h2>We will find you one !!!</h2>
  </div>
  <div class="main" id="Section">
    <br><br>
    <div class="part">
      <img src="img/rightbg.jpg" style="height:400px; width: 550px;border-radius: 10px; margin-top: 55px; box-shadow: 10px 10px gray;">
    </div>
    <div class="part">
      <h1>Our Focus</h1>
      <p>We work for you!!</p>
      <p>We are passionate about parking services. As the India's prestigious car park operator we have helped millions of customers to find solutions that are right for them. We have been able to do this because:
      <ul>
        <li>We have more car parks than anyone else, so there is more freedom of choice - over 150,000 spaces .</li>
        <li>Our colleagues are professional and helpful. They really care about delivering great customer service</li>
        <li>Many of our car parks are linked via a helpline to our 24/7 national operations center</li>
        <li>We are socially and ethically responsible. In previous years we secured 100% of our electricity from green source</li>
        <li>We always promote the idea of providing best services to our customer, in a very efficient way without compromising the comfort of an individual</li>
      </ul>
    </p>
    </div>
  </div>
  <div class="main" id="gallery">
    <br><br><hr><br><br>
    <h1>Gallery</h1>
      <div class="slideshow-container">

        <div class="mySlides fade">
          <div class="numbertext">1 / 3</div>
          <img src="img/wallhaven-0p696e.jpg" style="width:1000px; height: 400px; border-radius: 5px; box-shadow: 10px 10px gray;">
        </div>

        <div class="mySlides fade">
          <div class="numbertext">2 / 3</div>
          <img src="img/wallhaven-zxyl3y.jpg" style="width:1000px; height: 400px; border-radius: 5px; box-shadow: 10px 10px gray;">
        </div>

        <div class="mySlides fade">
          <div class="numbertext">3 / 3</div>
          <img src="img/leftbg.jpg" style="width:1000px; height: 400px; border-radius: 5px; box-shadow: 10px 10px gray;">
        </div>
        <br><br>
        <div style="text-align:center">
          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>
        </div>
        <br>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
      </div>
      <br><br>
  </div>
<script type="text/javascript" src="script/slides.js"></script>
<footer>
  <div class="footer" id="contact">
    <br>
    <hr>
    <h5>Get In Touch</h5>
    <h1>CONTACT US</h1>
    <p>Email : smartparking@gmail.com</p>
    <p>Call Us : 0731-2576981</p>
  </div>
</footer>
</body>
</html>
