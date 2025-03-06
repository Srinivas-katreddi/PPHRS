<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File, java.io.FileInputStream"%>
<%@page import="java.sql.*, java.lang.*, java.text.SimpleDateFormat, java.util.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>

<%
    ServletContext context = getServletContext();
    String dirName = context.getRealPath("Gallery/");
    String image = null, uname = null, addr = null, gender = null, pincode = null, location = null;
    FileInputStream fs = null;
    File file1 = null;

    try {
        // Handle multipart request (file upload and form data)
        MultipartRequest multi = new MultipartRequest(request, dirName, 10 * 1024 * 1024); // 10MB max size
        
        uname = multi.getParameter("userid");
        addr = multi.getParameter("address");
        gender = multi.getParameter("gender");
        pincode = multi.getParameter("pincode");
        location = multi.getParameter("location");
        
        Enumeration files = multi.getFileNames();
        while (files.hasMoreElements()) {
            String paramname = (String) files.nextElement();
            if (paramname != null) {
                image = multi.getFilesystemName(paramname);
                String fPath = context.getRealPath("Gallery/" + image);
                file1 = new File(fPath);
            }
        }

        if (uname == null || uname.isEmpty()) {
            out.println("Error: User ID is required.");
        } else {
            // Check if user exists
            String query1 = "SELECT * FROM patients WHERE name=?";
            PreparedStatement st1 = connection.prepareStatement(query1);
            st1.setString(1, uname);
            ResultSet rs1 = st1.executeQuery();

            if (rs1.next()) {
                // User exists, update profile
                String updateQuery = "UPDATE patients SET addr=?, gender=?, pin=?, location=?, image=? WHERE name=?";
                PreparedStatement ps = connection.prepareStatement(updateQuery);
                ps.setString(1, addr);
                ps.setString(2, gender);
                ps.setString(3, pincode);
                ps.setString(4, location);
                
                // Handle file input
                if (file1 != null && file1.exists()) {
                    fs = new FileInputStream(file1);
                    ps.setBinaryStream(5, fs, (int) file1.length());
                } else {
                    ps.setNull(5, java.sql.Types.BLOB);
                }
                
                ps.setString(6, uname);

                // Execute update
                int rowsUpdated = ps.executeUpdate();
                if (rowsUpdated > 0) {
                    out.println("Profile successfully updated!");
                    %>
                    <p><a href="p_profile.jsp">Back</a></p>
                    <p><a href="index.html">Home</a></p>
                    <%
                } else {
                    out.println("Error updating profile. Please try again.");
                }
            } else {
                out.println("User does not exist.");
            }
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
        e.printStackTrace();
    } finally {
        if (fs != null) {
            try {
                fs.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
%>