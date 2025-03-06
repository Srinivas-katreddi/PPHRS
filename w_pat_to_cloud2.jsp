<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Patient Data Upload Page</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
	 

  <!-- =======================================================
  * Template Name: iLanding
  * Template URL: https://bootstrapmade.com/ilanding-bootstrap-landing-page-template/
  * Updated: Nov 12 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>table {
  border-collapse: separate;
  border-spacing: 0;
  border: 2px solid #0d83fd;
  border-radius: 15px;
  overflow: hidden;
  color: black;
  width: 50%;
  max-width: 300px;
   
  }

td, th {
font-weight: bold;
  border: 1px solid #0d83fd;

background: #fff;
}
th {
    background-color: #007bff;
    color: white;
}

th:first-child {
  border-top-left-radius: 15px;
}

th:last-child {
  border-top-right-radius: 15px;
}

tr:last-child td:first-child {
  border-bottom-left-radius: 15px;
}

tr:last-child td:last-child {
  border-bottom-right-radius: 15px;
}
a{
text-decoration: none;
}
  
  label{
  color:#0d83fd;
  font-weight: bold;
  }
form.view {
    border: 1px solid transparent; /* Hide actual border */
    box-shadow: 0 0 15px rgba(0, 123, 255, 0.5); /* Blue shadow */
    background-color: white;
    text-align: left;
    padding: 10px; /* Keep uniform padding */
    margin: auto; /* Center the table */
}
  
input, textarea {
  border: 2px solid #007bff; /* Blue border */
  border-radius: 5px; /* Rounded corners */
  padding: 8px;
  outline: none; /* Remove default focus outline */
  transition: border-color 0.3s ease-in-out;
  outline:none;
  resize:none;
}
form{
  border-radius: 10px; /* Rounded corners */

}
/* Change border color on focus */
input:focus, textarea:focus {
  border-color: #ff5733; /* Change to orange when focused */
  box-shadow: 0 0 5px rgba(255, 87, 51, 0.5);
}

a{
text-decoration: none;
}
button {
  margin: 5px 10px; /* Adjust spacing as needed */
}

</style>

</head>

<body class="index-page">

  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="header-container container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

      <a href="Home.html" class="logo d-flex align-items-center me-auto me-xl-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="assets/img/logo.png" alt=""> 
        <!--<h1 class="Home.html" style="color:blue; border: 3px solid blue;border-radius:25%;padding:3px;">11</h1>-->
      </a>

      <nav id="navmenu" class="navmenu">
      <ul>
             <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="c_login.jsp"><span>Cloudlet</span></a></li>
          <li><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
          <li ><a href="w_login.jsp" class="active"><span>Hospitals</span></a></li> 
		  <li><a href="i_login.jsp"><span>Intruder</span></a></li>
    </ul>
       
      <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

 <a class="btn-getstarted" href="javascript:history.back();">Back</a>

    </div>
  </header>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h2 align="center">Collect Patient Data and Upload to Cloudlet</h2>
          <p>&nbsp;</p>
          <%@ page import="java.io.*" %>
          <%@ page import="java.math.BigInteger" %>
          <%@ page import="java.security.*" %>
          <%@ page import="java.sql.*" %>
          <%@ include file="connect.jsp" %>
          <% 
            String filename = "filename.txt";
            String h1 = "";
            String p1 = request.getParameter("p1");
            String p2 = request.getParameter("p2");
            String p3 = request.getParameter("p3");
            String p4 = request.getParameter("p4");
            String p5 = request.getParameter("p5");
            String p6 = request.getParameter("p6");
            String psym = request.getParameter("psym");
            String p8 = request.getParameter("p8");
            String p9 = request.getParameter("p9");
            try {
                PrintStream p = new PrintStream(new FileOutputStream(filename));
                p.print(p9);
                MessageDigest md = MessageDigest.getInstance("SHA1");
                try (FileInputStream fis = new FileInputStream(filename);
                     DigestInputStream dis = new DigestInputStream(fis, md);
                     BufferedInputStream bis = new BufferedInputStream(dis)) {
                    while (bis.read() != -1) {}
                }
                BigInteger bi = new BigInteger(md.digest());
                h1 = bi.toString(16);
            } catch (Exception e) {
                out.println(e.getMessage());
            }
          %>
          <form name="s" action="w_pat_to_cloud3.jsp" method="post" enctype="multipart/form-data" onsubmit="return valid()" target="_top">
            <table width="620" border="1" align="center" cellspacing="0" cellpadding="10">
              <tr>
                <td width="245" bgcolor="#99CCCC">Patient Name:</td>
                <td width="329" bgcolor="#CCCC00"><input name="p1" type="text" value="<%=p1%>" size="50" readonly /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">Contact Number:</td>
                <td width="329" bgcolor="#CCCC00"><input name="p2" type="text" value="<%=p2%>" size="50" readonly /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">E-mail:</td>
                <td width="329" bgcolor="#CCCC00"><input name="p3" type="text" value="<%=p3%>" size="50" readonly /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">Patient Address:</td>
                <td width="329" bgcolor="#CCCC00"><textarea name="p4" cols="52" rows="3" readonly><%=p4%></textarea></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">Pulses:</td>
                <td width="329" bgcolor="#CCCC00"><input name="p5" type="text" value="<%=p5%>" size="50" /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">ECG:</td>
                <td width="329" bgcolor="#CCCC00"><input name="p6" type="text" value="<%=p6%>" size="50" /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">Symptoms:</td>
                <td width="329" bgcolor="#CCCC00"><input name="psym" type="text" value="<%=psym%>" size="50" /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">File Name:</td>
                <td width="329" bgcolor="#CCCC00"><input name="p8" type="text" value="<%=p8%>" size="50" /></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">Content:</td>
                <td width="329" bgcolor="#CCCC00"><textarea name="p9" cols="52" rows="15"><%=p9%></textarea></td>
              </tr>
              <tr>
                <td width="245" bgcolor="#99CCCC">Digital Sign (MAC):</td>
                <td width="329" bgcolor="#CCCC00"><input name="p10" type="text" value="<%=h1%>" size="50" /></td>
              </tr>
              <tr>
                <td width="286" bgcolor="#99CCCC">Add Image:</td>
                <td width="356" bgcolor="#CCCC00"><input type="file" name="pic" /></td>
              </tr>
              <tr>
                <td bgcolor="#99CCCC"></td>
                <td bgcolor="#CCCC00"><input type="submit" class="btn-getstarted" name="Submit" value="Upload" /> <span>(All Data Will be Encrypted)</span></td>
              </tr>
            </table>
          </form>
          <% connection.close(); %>
          <p>&nbsp;</p>
          <p align="right"><a href="w_pat_to_cloud.jsp" class="style6">Back</a></p>
        </div>
   
           <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="100" value="Search our site:" type="text" />
            </span>
            <input name="button_search" src="images/search.png" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Hospital</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu" >
       <li><a href="w_pat_to_cloud.jsp" style="boder:20px solid var(--accent-color);
  background-color: color-mix(in srgb, var(--accent-color), black 20%);
 color:white;"> Collect Patient Data and Upload to Healthcare Cloud</a></li>
            <li><a href="w_pat_data.jsp"> View All Patients Collected Data </a></li>
            <li><a href="w_login.jsp"> Log Out </a></li>
                </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Concepts</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><span class="infopost style2">Artificial  intelligence, </span></li>
            <li><span class="infopost style2">blockchain, </span></li>
            <li><span class="infopost style2">federated learning,  </span></li>
            <li><span class="infopost style2">privacy, pandemic</span></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
<div align=center></div>
</body>
</html>
  