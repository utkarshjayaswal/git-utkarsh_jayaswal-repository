<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Multi-Keyword Search in Cloud computing</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String name=request.getParameter("name");
String fid=request.getParameter("fid");
String fkey=request.getParameter("rkey");
System.out.println(name);
System.out.println(fid);
System.out.println(fkey);
Connection con=databasecon.getconnection();
PreparedStatement ps = null,ps1=null,ps2=null;
ResultSet rs = null,rs1 = null;
ps1=con.prepareStatement("update keyvalue set rkey=? where fileid =? and uname=? ");
ps1.setString(1,fkey);
ps1.setString(2,fid);
ps1.setString(3,name);
ps1.executeUpdate();
response.sendRedirect("keyrequest.jsp?message=Request Send");
%>
</body>
</html>
