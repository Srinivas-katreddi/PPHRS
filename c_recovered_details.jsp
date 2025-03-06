<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Recovery Details</title>
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
          <li><a href="c_login.jsp" class="active"><span>Healthcare Cloud</span></a></li>
          <li><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
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
         

          <div class="clr"></div>
   
          <div class="clr"></div>
          <h2 align="center"> View Patient Recovered Details </h2>
		  <p>&nbsp;</p>








<table width="611" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="57" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style14 style7 style8 style9">Si.No.</div></td>
           <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Report Id</div></td>
		   <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Patient Name</div></td>
		   <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Attacked Date</div></td>
           <td width="203" bgcolor="#9eb8dd"><div align="center" class="style12 style13 style16 style7 style8 style9">Recovery Status</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from intruder_details "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								
		
		
		%>
                    
                    <tr>
                      <td height="47" bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=j%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=i%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><a href="c_pat_profile.jsp?user=<%=s2%>&type=<%="five"%>" class="style16 style10 style11 style8 style13"><%=s2%></a></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=s3%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style11 style13 style7 style8 style10"><%=s4%></div></td>
	                </tr>
			 		  
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>

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
          <h2 class="star"><span>Cloud</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu" >
         <li><strong><a href="c_all_pat.jsp"> View All Patients and Authorize </a></strong></li>
            <li><strong><a href="c_all_doc.jsp"> View All Doctors and Authorize </a></strong></li>
            <li><strong><a href="c_pat_data.jsp"> Vliew All Patients Data </a></strong></li>
			<li><strong><a href="c_pat_acc_req.jsp"> View Patient Data Access Request and Authorize </a></strong></li>
			<li><strong><a href="c_intr_details.jsp"> View All  Intruders Details </a></strong></li>
			<li><strong><a href="c_view_personal_healthcare_records_by_blockchain.jsp">View Personal Healthcare Records by Blockchain </a></strong></li>
			
			<li><strong><a href="c_recovered_details.jsp" style="boder:20px solid var(--accent-color);
  background-color: color-mix(in srgb, var(--accent-color), black 20%);
 color:white;"> View Patient Recovered Details</a></strong></li>
			<li><strong><a href="c_chart1.jsp"> View No.Of Same Symptoms in Chart </a></strong></li>
			<li><strong><a href="c_chart2.jsp"> View No.Of Patients Referred Same Doctor in Chart </a></strong></li>			
            <li><strong><a href="c_login.jsp"> Log Out </a></strong></li>
         	    
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
  
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>

<div align=center></div>
</body>
</html>
  
  