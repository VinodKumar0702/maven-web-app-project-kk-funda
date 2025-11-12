<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">

<style>
  body {
    font-family: Arial, sans-serif;
    background: #f0f8ff;
    margin: 0;
    padding: 0;
  }
  .marquee {
    background: linear-gradient(90deg, #ff6f61, #6a5acd, #20b2aa);
    color: white;
    padding: 10px;
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    animation: scroll 15s linear infinite;
    white-space: nowrap;
    overflow: hidden;
  }
  @keyframes scroll {
    0% { transform: translateX(100%); }
    100% { transform: translateX(-100%); }
  }
  h1, h3 {
    text-align: center;
    background: linear-gradient(to right, #ff7e5f, #feb47b);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  .info-box {
    width: 60%;
    margin: 20px auto;
    padding: 15px;
    border-radius: 10px;
    background: linear-gradient(to right, #00c6ff, #0072ff);
    color: white;
    font-weight: bold;
  }
  .contact {
    text-align: center;
    margin-top: 30px;
  }
  .contact span {
    display: block;
    margin: 5px 0;
    color: #333;
  }
  a {
    color: #ff4500;
    text-decoration: none;
    font-weight: bold;
  }
  a:hover {
    text-decoration: underline;
  }
</style>
</head>

<body>

<div class="marquee">
  Welcome to KK FUNDA DevOps Batch Starting Soon!
</div>

<h1>KKFUNDA</h1>
<hr>

<div class="info-box">
  <h3>Server Side IP Address</h3>
  <%
    String ip = "";
    InetAddress inetAddress = InetAddress.getLocalHost();
    ip = inetAddress.getHostAddress();
    out.println("Server Host Name :: " + inetAddress.getHostName() + "<br>");
    out.println("Server IP Address :: " + ip);
  %>
</div>

<div class="info-box" style="background: linear-gradient(to right, #ff512f, #dd2476);">
  <h3>Client Side IP Address</h3>
  <%
    out.println("Client IP Address :: " + request.getRemoteAddr() + "<br>");
    out.println("Client Host Name :: " + request.getRemoteHost());
  %>
</div>

<hr>

<div class="contact">
  <img src="images/kkfunda.jpg" width="100" alt="KK FUNDA Logo">
  <span>KK FUNDA, Martha Halli, Bangalore</span>
  <span>+91-9676831734, +91-9676831734</span>
  <span>kkeducationblr@gmail.com</span>
  <span><a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a></span>
</div>

<hr>

<p>Service : <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
<hr>

<p align="center">KK FUNDA Training, Development Center.</p>
<p align="center"><small>Copyrights 2024 by <a href="https://www.google.com/">KK FUNDA</a></small></p>

</body>
</html>
