<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Patient Records</title>
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
 hr {  
            height: 4px;  
            background-color: #0d83fd; 
              
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
          <h2 align="center"> View personal healthcare records by blockchain</h2>
<%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		   
           <%
					  
					  
					  try
					  {
					String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s17="",s111="";
	String decs3="",decs4="",decs5="",decs6="",decs7="",decs8="",decs9="",decs17="",hsign="";
	int i=0,j=1,k=0;
	//String keys = "";
	//String pname = request.getParameter("pat");
	
	String ss4="";
	

 	                    
							String query1="select distinct(dsig) from cloudlet_files "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() ) 
			                {
					
						    hsign = rs1.getString(1);
						   	String query="select * from cloudlet_files where dsig = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s8=rs.getString(8); // file name
							
							s111 = new String(Base64.decode(s8.getBytes()));
							
							
							%>
	
          <div class="clr"></div>
   
          <div class="clr"></div>
 	 <table width="620" border="1" align="center" cellspacing="0" cellpadding="10">
    
	  <tr>
		<hr> 
     <div style="text-align: center;">
    <h3 class="style1">
        <span class="style1">Disease Name BlockChain ---> :: </span> <%= s111 %>
    </h3>
    <h3 class="style1">
        <span class="style1">Disease Report Hash Code ---> :: </span> <%= hsign %>
    </h3>
</div>
		<div align="center">
			  <%
							
							}
								 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8); // file name
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
								s17=rs.getString(15);//
								
				String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.DECRYPT_MODE, key);
				
				 decs3 = new String(Base64.decode(s3.getBytes()));
				 decs4 = new String(Base64.decode(s4.getBytes()));
				 decs5 = new String(Base64.decode(s5.getBytes()));
				 decs6 = new String(Base64.decode(s6.getBytes()));
				 decs7 = new String(Base64.decode(s7.getBytes()));
				 decs8 = new String(Base64.decode(s8.getBytes()));
				 decs9 = new String(Base64.decode(s9.getBytes()));
				 decs17 = new String(Base64.decode(s17.getBytes()));
					
					
					%>
	      
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Patient Image :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input  name="image" type="image" style="width:100px; height:90px;" src="d_p_Pic.jsp?id=<%=i%>" /></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Patient Name :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=s2%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Contact Number :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs3%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">E-mail :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs4%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Patient Address :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs5%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Pulses :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs6%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">ECG :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs7%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Symptoms :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs17%></span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Symptoms<br />File Name :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style14"><%=decs8%></span></td>
      </tr>
	  
      <tr>
		<td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">File Content :- </span></div></td>
        <td bgcolor="#CCCC00"><span class="style13 style7 style8">
          <textarea name="p9" id="textarea" cols="52" rows="15" readonly="readonly"><%=decs9%></textarea>
        </span></td>
      </tr>
	  
	  <tr>
        <td width="245" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style9"><span class="style4 style12">Digital Sign (MAC) :- </span></div></td>
        <td width="329" bgcolor="#CCCC00"><span class="style10 style13"><%=s10%></span></td>
      </tr>
 	
	    <%
					 
			   }
					  	

			    }
					 
%>

</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					%> 





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
			<li><strong><a href="c_view_personal_healthcare_records_by_blockchain.jsp" style="boder:20px solid var(--accent-color);
  background-color: color-mix(in srgb, var(--accent-color), black 20%);
 color:white;">View Personal Healthcare Records by Blockchain </a></strong></li>
			
			<li><strong><a href="c_recovered_details.jsp"> View Patient Recovered Details</a></strong></li>
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
  
  