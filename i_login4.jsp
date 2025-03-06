<title>Inject Data</title>
<%@page import="java.io.*" %>
<%@page import="java.math.BigInteger" %>
<%@page import="java.security.*" %>
<%@page import="javax.crypto.*" %>
<%@page import="javax.crypto.spec.SecretKeySpec" %>
<%@page import="org.bouncycastle.util.encoders.Base64" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@ include file="connect.jsp" %>
<%
try {
    String p1 = request.getParameter("p1");
    int id = Integer.parseInt(request.getParameter("p2"));
    String p9 = request.getParameter("p9"); // content

    String h1 = "";
    String keys = "q2e34rrfgfgfgg2a";
    byte[] keyValue = keys.getBytes();
    Key key = new SecretKeySpec(keyValue, "AES");
    Cipher c = Cipher.getInstance("AES");
    c.init(Cipher.ENCRYPT_MODE, key);

    // Encrypting content
    String encp9 = new String(Base64.encode(p9.getBytes()));

    // Check if content already exists
    String query2 = "SELECT * FROM cloudlet_files WHERE id=? AND fcont=?";
    PreparedStatement psCheck = connection.prepareStatement(query2);
    psCheck.setInt(1, id);
    psCheck.setString(2, encp9);
    ResultSet rs2 = psCheck.executeQuery();

    if (rs2.next()) {
%>
        <script>alert("You Have Injected Data Into The Cloudlet");
			window.location.href="i_login2.jsp?id=<%=id%>";</script>
        <!-- <p>You Have Not Changed The Content.</p>
        <p><a href="i_login2.jsp?id=<%=id%>">Back</a></p>-->
<%
    } else {
        // Calculate Digital Signature (SHA-1 hash)
        MessageDigest md = MessageDigest.getInstance("SHA-1");
        byte[] messageDigest = md.digest(p9.getBytes());
        BigInteger bi1 = new BigInteger(1, messageDigest);
        h1 = bi1.toString(16);

        // Update cloudlet files with new content and digital signature
        String updateQuery = "UPDATE cloudlet_files SET fcont=?, dsig=?, upload_by=? WHERE id=?";
        PreparedStatement psUpdate = connection.prepareStatement(updateQuery);
        psUpdate.setString(1, encp9);
        psUpdate.setString(2, h1);
        psUpdate.setString(3, ""); // Replace with actual uploader's info
        psUpdate.setInt(4, id);
        psUpdate.executeUpdate();

        // Record the attack details
        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
        Date now = new Date();
        String strDate = sdfDate.format(now);
        String strTime = sdfTime.format(now);
        String dt = strDate + " " + strTime;

        String intruderQuery = "INSERT INTO intruder_details(id, pname, dt, status) VALUES (?, ?, ?, ?)";
        PreparedStatement psIntruder = connection.prepareStatement(intruderQuery);
        psIntruder.setInt(1, id);
        psIntruder.setString(2, p1);
        psIntruder.setString(3, dt);
        psIntruder.setString(4, "Attacked");
        psIntruder.executeUpdate();

%>
<script>alert("You Have Injected Data Into The Cloudlet");
			window.location.href="i_login.jsp";</script>
       <!--  <p>You Have Injected Data Into The Cloudlet</p>
        <p><a href="i_login.jsp">Back</a></p>
        <p><a href="index.html">Home</a></p> -->
<%
    }
    connection.close();
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>
