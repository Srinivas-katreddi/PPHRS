<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Hospital Home Page</title>
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

      <a class="btn-getstarted" href="#" style="color:white;background-color: white;">back</a>

    </div>
  </header>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Welcome to Hospitals Main  </h2>

          <div class="clr"></div>
          <div class="img"><img src="assets/img/Hsp1.jpg" width="500" height="300" style="margin-left: 150px" class="fl"/></div>
          <div class="post_content">
            <p align="justify" class="style2" style="font-size: 15px;"><strong> This dashboard provides hospitals with a secure and efficient platform to collect, manage, and store patient data while ensuring the highest standards of privacy and security. By leveraging blockchain-based encryption, hospitals can safeguard sensitive patient information, preventing unauthorized access and ensuring data integrity. </strong></p></div>
        
          <p align="justify" class="style2" style="font-size: 15px; "><strong>Hospitals can seamlessly collect and upload essential patient details, including patient ID, name, address, contact number, email, pulse rate, ECG readings, and symptoms. To enhance security, all parameters except the patient's name are encrypted before storage. Medical reports and symptom details can be attached with a digital signature, ensuring authenticity and reliability in patient records. Additionally, patient images are encrypted and stored securely, maintaining strict confidentiality.</strong></p>
         
          <p align="justify" class="style2" style="font-size: 15px;"><strong> The dashboard also allows hospitals to view all collected patient data in an encrypted format, with digital signatures verifying the authenticity of each record. This ensures that patient information remains protected while allowing authorized healthcare professionals to access necessary details securely.</strong></p>
          
          <p align="justify" class="style2" style="font-size: 15px;"><strong>With this hospital dashboard, managing patient data becomes more streamlined, secure, and efficient, helping healthcare providers deliver better services while maintaining compliance with data protection regulations.</strong></p>
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
       <li><a href="w_pat_to_cloud.jsp" > Collect Patient Data and Upload to Healthcare Cloud</a></li>
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
  