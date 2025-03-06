<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Patient Profile Page</title>
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

<style>
.content {
    display: flex;
    justify-content: center;
    align-items: center;
    overflow-x: auto; /* Prevents table from overflowing */
    max-width: 100%; /* Ensures content stays within boundaries */
    padding: 10px; /* Adds some spacing */
}

table {
    width: 90%;
    max-width: 90%; /* Ensures table does not exceed parent */
    border-collapse: collapse;
    box-shadow: 0 0 15px rgba(0, 123, 255, 0.5); /* Blue shadow */
}
td, th {

    text-align: left;
    padding: 10px;
    border: 1px solid #ddd;
}



td, th {
     border: 1px solid transparent;
    background-color: white;
    text-align: left;
    padding: 10px; /* Keep uniform padding */
}
th {
    background-color: white;
  
}
/* Adjust width for left-side columns */
td:nth-child(2),
td:nth-child(3),
td:nth-child(5),
td:nth-child(7),
td:nth-child(9),
td:nth-child(11),
td:nth-child(13),
td:nth-child(15) {
    min-width: 250px; /* Increase the width of left-side columns */
    width: auto;
    text-align: left; /* Allow auto adjustment based on content */
 /* Make text bold */
    /* Move columns slightly to the right */
}

/* Adjust width for content cells (columns 4, 6, 8, 10, 12, 14, 16) */
td:nth-child(4), 
td:nth-child(6), 
td:nth-child(8), 
td:nth-child(10), 
td:nth-child(12), 
td:nth-child(14),
td:nth-child(16) {

    min-width: 100px; /* Keep content cells smaller */
    width: auto;
    text-align: right; /* Allow auto adjustment based on content */
}

/* Make sure the table header widths are consistent */
th {
    min-width: 100px; /* Optional: Set min width for headers */
    width: auto; /* Allow auto adjustment for headers */
    background-color: white;
    color: #007bff;
}
a{
text-decoration: none;
}
.left{
 padding-left: 20px;
}
.btn-getstarted {
    background-color: #007bff;
    color: white;
     font-size: 14px;
  padding: 8px;
    
  border-radius: 40px;
  transition: 0.3s;
  text-decoration: none;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: background-color 0.2s ease, transform 0.1s ease;
}

.btn-getstarted:hover {
    background-color: #007bff;
    color:white;
    transform: scale(1.02); /* Slight hover effect */
   
}.btn-container {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  bottom: -60px; /* Increased from 20px to 10px */
  left: 50%;
  transform: translateX(-61%);
  width: 100%;
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
          <li><a href="p_login.jsp" class="active"><span>Patient</span></a></li>
          <li><a href="w_login.jsp"><span>Hospitals</span></a></li> 
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
                    <h2 align="center"> <%=application.getAttribute("pat")%> Profile <span class="style6"></span> </h2>
                     <div class="clr"></div>
                     
	       <center> <table width="570" height="395"  align="center"  cellpadding="0" cellspacing="0" style="width:90px;">
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=(String)application.getAttribute("pat");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from patients where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
								
								
								
								
								
					%>
         <tr>
<td width="45" rowspan="7">
  <input name="image" type="image" src="p_Pic.jsp?id=<%=i%>" 
    style="width:150px; height:100px; margin-top:70px; margin-right: -40px; padding-left:40px;" />
</td>
 <tr>
            <th style="text-align: center; width: 30%;padding-right: 30px; "><b>Field Name</b></th>
            <th style="text-align: center; width: 30%; transform: translateX(-100px);  "><b>Value</b></th>
        </tr>
	
            </tr>
            <div class="left">
            <tr>
              <td style=" padding-left: 80px;"><b>Name:</td>
              <td>
                <%out.println(s2);%>
              </td>
            </tr>
            <tr>
              <td style=" padding-left: 80px;"><b>E-Mail:</td>
              <td >
                <%out.println(s4);%>
              </td>
            </tr>
            <tr>
              <td style=" padding-left: 80px;"><b>Mobile:</span></td> 
              <td>
                <%out.println(s5);%>
              </td>
            </tr>
            <tr>
			  
              <td style=" padding-left: 80px;"><b>Location:</td>
              <td>
                <%out.println(s10);%>
              </td>
            </tr>
            <tr>
			  
              <td style=" padding-left: 80px;" ><b>Date of Birth:</td>
              <td >
                <%out.println(s7);%>
              </td>
            </tr>
            <tr>
              <td height="47"></td>
              <td style=" padding-left: 80px;"><b>Address:</td>
              <td >
                <%out.println(s6);%>
              </td>
            </tr>
            <tr>
              <td height="44"></td>
              <td style=" padding-left: 80px;"><b>Gender:</td>
              <td >
                <%out.println(s8);%>
              </td>
            </tr>
            <tr>
              <td height="45"></td>
              <td style=" padding-left: 80px;"><b>Pincode:</td>
              <td >
                <%out.println(s9);%>
              </td>
            </tr>
            <tr>
              <td height="48"></td>
              <td style=" padding-left: 80px;"><b>Status:</td>
              <td >
                <%out.println(s12);%>
              </td>
            </tr></div>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
					<tr>
					<th>
					  <div class="btn-container">
			  <a class="btn-getstarted" href="p_update_profile.jsp?">Update Profile</a>
            </div>
              </th>
              </tr>
              <tr>
              <th> 
              </th>
              </tr>
              
              <div class="clr"></div>
</table>
    
</center>  
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
         <li><strong><a href="p_profile.jsp" style="boder:20px solid var(--accent-color);
  background-color: color-mix(in srgb, var(--accent-color), black 20%);
 color:white;"> My Profile </a></strong></li>
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