<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Patient Home Page</title>
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
          <li ><a href="p_login.jsp"  class="active"><span>Patient</span></a></li>
          <li><a href="w_login.jsp"><span>Hospitals</span></a></li> 
		  <li><a href="i_login.jsp"><span>Intruder</span></a></li>
        </ul>
       
      <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

      <a class="btn-getstarted" href="p_profile.jsp">Profile</a>

    </div>
  </header>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
                    <h2 align="center"> Welcome to Patient Main : <span class="style6"> <%=application.getAttribute("pat")%> </span> </h2>
		 
          
          <div class="clr"></div>
          <div class="img"><img src="images/Patient.jpg" width="500" height="221" style="margin-left: 80px" class="fl"/></div>
          <div class="post_content">
            <p align="justify" class="style2" style="font-size: 15px;"><strong> Your health is our priority! This dashboard provides a secure and user-friendly platform to access your medical records, appointments, prescriptions, and test results. With just a few clicks, you can stay updated on your health information anytime, anywhere. </strong></p></div>
        
          <p align="justify" class="style2" style="font-size: 15px; "><strong>You can conveniently view your complete medical history, including past diagnoses, treatments, and doctors notes. Stay informed about your upcoming appointments to ensure you never miss an important consultation. Your prescriptions and medication details are also available, helping you manage your treatments effectively. Additionally, lab reports and test results can be securely accessed, allowing you to monitor your health progress with ease.</strong></p>
         
          <p align="justify" class="style2" style="font-size: 15px;"><strong> Security is our top concern. With blockchain technology, your healthcare data is encrypted and tamper-proof, ensuring that only authorized individuals can access it. If you need any assistance, our support team is always ready to help.</strong></p>
          
          <p align="justify" class="style2" style="font-size: 15px;"><strong>Stay healthy, stay informed, and take control of your well-being!    </strong></p>
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
          <h2 class="star"><span>Patient</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu" >
         <li><strong><a href="p_profile.jsp"> My Profile </a></strong></li>
            <li><strong><a href="p_req_cloud.jsp"> Request Data Access Permission From Cloudlet </a></strong></li>
			<li><strong><a href="p_my_dat_to_doc_new.jsp"> Access My Data and Send To Doctor </a></strong></li>
			<li><strong><a href="p_d_response.jsp"> View Doctor Response with Medical Prescription </a></strong></li>
			<li><strong><a href="p_verify_data.jsp"> Verify My Data and Recover </a></strong></li>
			<li><strong><a href="p_delete_data.jsp"> View and Delete My Details </a></strong></li>
            <li><strong><a href="p_login.jsp"> Log Out </a></strong></li>
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
  