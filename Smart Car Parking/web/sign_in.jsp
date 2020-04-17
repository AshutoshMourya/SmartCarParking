<%-- 
    Document   : ac
    Created on : 2 Mar, 2020, 12:11:06 AM
    Author     : Hp
--%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login/Signup</title>

  <link rel="icon" href="img/logo1.png">
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
      <link rel="stylesheet" href="stylesheets/style.css">

</head>
<body>
  <div class="header">
    <img src="img/logo1.png">
    <div class="header-right">
      <a href="index.jsp">Home</a>
    </div>
  </div>
  <div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
    <div class="login-form">
      <form class="sign-in-htm" action="Login"  method="post">
        <div class="group">
          <br><br>
          <label for="user" class="label">User ID</label><br>
          <input id="username" name="username" type="text" class="input" required>
        </div><br><br>
        <div class="group">
          <label for="pass" class="label">Password</label><br>
          <input id="passwordd" name="password" type="password" class="input" data-type="password" required>
        </div><br><br>
        <div class="group">
          <input id="check" type="checkbox" class="check" checked>
          <label for="check"><span class="icon"></span> Keep me Signed in</label>
        </div><br>
        <div class="group">
          <input type="submit" class="button" value="Sign In" onsubmit="home.jsp"/>
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="forgot">Forgot Password?</a>
        </div>
      </form>
      <form class="sign-up-htm" action="Register" method="POST">
        <div class="group">
          <br>
          <label for="username" class="label">Full Name</label>
          <input id="username" name="username" type="text" class="input" required>
        </div>
        <div class="group">
          <label for="userid" class="label">Username</label>
          <input id="userid" name="userid"type="text" class="input" required>
        </div>
        <div class="group">
          <label for="password" class="label">Password</label>
          <input id="password" name="password" type="password" class="input" data-type="password" placeholder="Please use a strong password" required>
        </div>
        <div class="group">
          <label for="password1" class="label">Confirm Password</label>
          <input id="password1" name="password1" type="password" class="input" data-type="password" placeholder="Enter the same password" required>
        </div>
        <div class="group">
          <label for="dl" class="label">Driving License Number</label>
          <input id="dl" type="text" class="input"  name= "license" required>
        </div>
        <div class="group">
          <label for="mobile" class="label">Mobile Number</label>
          <input id="mobile" name="mobile" type="tel" class="input" min="6000000000" max="9999999999" required>
        </div>
        <div class="group">
          <label for="email" class="label">Email</label>
          <input id="email" name="email" type="email" class="input" required>
        </div><br>
        <div class="group">
          <input type="submit" class="button" value="Sign Up" onclick="return Validate();" />
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="sign_in.jsp">Already Member?</a>
        </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
    function lValidate(){
         var pass =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
         var psw = document.getElementById("passwordd").value;
         
       if(!psw.match(pass)){  
       alert("You entered an invalid Password!"); 
       alert("Password must be between 8 to 15 characters which contain at least 1 lowercase letter, 1 uppercase letter, 1 numeric digit, and 1 special character");
       document.getElementById("password").focus();
        return false; 
        } 
    }
  function Validate() {
      var pass =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
      var phoneno = /^\d{10}$/;
      var license_pat = /^[A-Z]{2}[0-9]{2}[0-9]{4}[0-9]{7}$/;
      var email =document.getElementById("email").value;
      var mob = document.getElementById("mobile").value;
      var userid = document.getElementById("userid").value;
      var password = document.getElementById("password").value;
      var license = document.getElementById("dl").value;
      var confirmPassword = document.getElementById("password1").value;
      if (password != confirmPassword) {
          alert("Passwords Don't Match");
          document.getElementById("password1").focus();
          return false;
      }
      if(!password.match(pass)){  
       alert("You entered an invalid Password!"); 
       alert("Password must be between 8 to 15 characters which contain at least 1 lowercase letter, 1 uppercase letter, 1 numeric digit, and 1 special character");
       document.getElementById("password").focus();
        return false; 
        } 
      if(!mob.match(phoneno)){
        alert("Mobile number not valid!");  
        document.getElementById("mobile").focus();
        return false;
        }  
      if (!license.match(license_pat)){
        alert("Please Enter a valid License Number (eg. MH1420160062821)");
        document.getElementById("dl").focus();
        return false;
      }
      if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(myform.email))
           {
           alert("You have entered an invalid email address!");
           document.getElementById("email").focus();
           return (false)
           }
      return true
  }
</script>

</body>
</html>
