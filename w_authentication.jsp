<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%

    try
		{
		    
			String name=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			//application.setAttribute("csp",username);
			
			
			String sql="SELECT * FROM device where name='"+name+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if (rs.next()==true)
			{
									  
				int otp = (int) (Math.random() * 900000) + 100000;
	            String updateOtpSql = "UPDATE device SET otp=" + otp + " WHERE name='" + name + "'";
	            Statement updateStmt = connection.createStatement();
	            int rowsUpdated = updateStmt.executeUpdate(updateOtpSql);
				application.setAttribute("otp", otp);
				System.out.println(otp);
	            if (rowsUpdated > 0) {
	%>
	                <script>
	                    showOTP(<%= otp %>);
	                </script>
	<%
	            } else {
	%>
	                <script>
	                    showError("Error generating OTP. Please try again.");
	                </script>
	<%
	            }
				response.sendRedirect("w_verify.jsp");

									
					}
			else
			{
				out.print("Invalid Login Details");
				 %><br/><br/><a href="w_login.jsp">Back</a><%
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>