<%-- 
    Document   : aboutus
    Created on : Apr 15, 2020, 1:37:58 AM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;}
html {
  box-sizing: border-box;}

*, *:before, *:after {
  box-sizing: inherit;}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;}

.aboutsection {
  padding: 50px;
  text-align: center;
  background-color: #2D0909;
  color: white;}

.container {
  padding: 0 16px;}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;}

.title {
  color: grey;}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: black;
  background-color:#ffffff;
  text-align: center;
  cursor: pointer;
  width: 100%;}

.button:hover {
  background-color: #555;}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;}
}
</style>
</head>
<body>

<div class="aboutsection">
  <h1>About Us</h1>
  <p>Here at SmartPark we are always determined to work with our fellow teamates with ethical determination. 
  We always create a helping and friendful environment for our fellow teamates</p>
  <p>Here at SmartPark there are no CEO's , just patners with great team spirit.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="img/ashu.png"  style="width:100%">
      <div class="container">
        <h2>Ashutosh Mourya</h2>
        <p class="title">Founder</p>
        <p>0801IT171014</p><br>
        <p>3rd year B.Tech.</p>
        <p>SGSITS Indore</p>
        <p>ashutoshmourya@gmail.com</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img/pandey.png"  style="width:100%">
      <div class="container">
        <h2>Ashutosh Pandey</h2>
        <p class="title">Founder</p>
        <p>0801IT171015</p><br>
        <p>3rd year B.Tech.</p>
        <p>SGSITS Indore</p>
        <p>ashutoshpandey@gmail.com</p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/atal.png"  style="width:100%">
      <div class="container">
        <h2>Atal Sharma</h2>
        <p class="title">Founder</p>
        <p>0801IT171016</p><br>
        <p>3rd year B.Tech.</p>
        <p>SGSITS Indore</p>
        <p>atalsharma@gmail.com</p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
