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
String u=(String)session.getAttribute("u");
String name=(String)session.getAttribute("name");
String fn=request.getParameter("fn");
String f=request.getParameter("file");
session.setAttribute("f",fn);

String a="";
String fname=a+f;
String fkey=request.getParameter("fkey");
session.setAttribute("fkey",fkey);

		  
		  FileInputStream fis=null;
		  FileOutputStream fout=null,fout1=null,fout2=null;
          File file = new File(fname);
		 
		 
		  double bytes=file.length();
		  double kb=bytes/1024;
		  String kbs=Double.toString(kb);
		  session.setAttribute("kbs",kbs);
		  
		  byte[] bFile = new byte[(int) file.length()];
 
		  
            //convert file into array of bytes
	     fis=new FileInputStream(file);
	File f1=new File("./temp");
	if(!f1.exists())
		f1.mkdir();
       
		 fout = new FileOutputStream("./temp/file1.txt");
		
		int z=fis.available();
		
		fis.read(bFile);
	      fis.close();
     
	      for (int i = 0; i <z; i++) 
	      {
 			String ss=new String(new byte[] {bFile[i]});
			String ss1=EncryptString.encrypt(ss);
			byte[] ss2 = ss1.getBytes();
	      	fout.write(ss2);
			
	      }
			

		
	response.sendRedirect("file_upload2.jsp");
%>
</body>
</html>
