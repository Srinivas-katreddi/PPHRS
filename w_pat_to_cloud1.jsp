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
          <li><a href="w_login.jsp" class="active"><span>Hospitals</span></a></li> 
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
          <h2 align="center"> Collect Patient Data and Upload to Cloudlet  </h2>
		  <p>&nbsp;</p>


<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String pname = request.getParameter("pat");

 try 
	{		
      	                    String query2="select * from cloudlet_files where pname='"+pname+"' and status='Unsolved' "; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		if ( rs2.next() ) 
			                {
							%> 
							
							<p align="center" class="style14"> Previous Report is Not Yet Solved. </p> 
                            <%
							}
							else
							{
							
							String query="select * from patients where name='"+pname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
		
		


%>
</div>
<div class="content" style="margin-top: 20px; width: 100%;">
    <div class="content_resize">
        <div class="article">
            <div class="container mt-4">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <form class="view" name="s" action="w_pat_to_cloud2.jsp" method="post" onSubmit="return valid()">
                            
                            <div class="mb-3">
                                <label for="p1" class="form-label">Patient Name</label>
                                <input id="p1" name="p1" type="text" class="form-control" value="<%=s2%>" readonly />
                            </div>

                            <div class="mb-3">
                                <label for="p2" class="form-label">Contact Number</label>
                                <input id="p2" name="p2" type="text" class="form-control" value="<%=s5%>" readonly />
                            </div>

                            <div class="mb-3">
                                <label for="p3" class="form-label">E-mail</label>
                                <input id="p3" name="p3" type="text" class="form-control" value="<%=s4%>" readonly />
                            </div>

                            <div class="mb-3">
                                <label for="p4" class="form-label">Patient Address</label>
                                <textarea id="p4" name="p4" class="form-control" rows="3" readonly><%=s6%></textarea>
                            </div>

                            <div class="mb-3">
                                <label for="p5" class="form-label">Pulses</label>
                                <input id="p5" name="p5" type="text" class="form-control" />
                            </div>

                            <div class="mb-3">
                                <label for="p6" class="form-label">ECG</label>
                                <input id="p6" name="p6" type="text" class="form-control" />
                            </div>

                            <div class="mb-3">
                                <label for="psym" class="form-label">Symptoms</label>
                                <input id="psym" name="psym" type="text" class="form-control" placeholder="Use commas to separate symptoms" />
                            </div>

                            <div class="mb-3">
                                <label for="file" class="form-label">Select Symptoms File</label>
                                <input id="file" name="p7" type="file" class="form-control" onchange="loadFileAsText()" required />
                            </div>

                            <div class="mb-3">
                                <label for="p8" class="form-label">File Name</label>
                                <input id="p8" name="p8" type="text" class="form-control" />
                            </div>

                            <div class="mb-3">
                                <label for="textarea" class="form-label">Content</label>
                                <textarea id="textarea" name="p9" class="form-control" rows="5" placeholder="Enter here" style="resize: none;"></textarea>
                            </div>

                            <div class="d-flex justify-content-between">
                                <button type="submit" class="btn btn-primary w-45">Upload</button>
                                <button type="reset" class="btn btn-secondary w-45">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
      
<%


							  
       
		
	  }}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

        
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
       <li><a href="w_pat_to_cloud.jsp"style="boder:20px solid var(--accent-color);
  background-color: color-mix(in srgb, var(--accent-color), black 20%);
 color:white;" > Collect Patient Data and Upload to Healthcare Cloud</a></li>
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
  