<%@page import="org.apache.commons.net.ftp.FTP"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@page import="java.net.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Multi-Keyword Search in Cloud computing</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>

<%

java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

String server = "ftp.drivehq.com";
int port = 21;
String user = "dataac";
String pass = "dataalcott";



String a="./temp/file1.txt";

FileInputStream fis=null;

File image=new File(a);
//String m="on process";
String ser=(String)session.getAttribute("ser");


String u=(String)session.getAttribute("u");
String name=(String)session.getAttribute("name");
String f=(String)session.getAttribute("f");
String tfid=(String)session.getAttribute("tfid");
String fkey=(String)session.getAttribute("fkey");

System.out.println(tfid);
System.out.println(u);
System.out.println(name);
System.out.println(f);
System.out.println(fkey);





Connection con=null,con1=null,con2=null;
PreparedStatement psmt1=null,psmt2=null,psmt3=null;

FTPClient ftpClient = new FTPClient();
		try {

			ftpClient.connect(server, port);
			ftpClient.login(user, pass);
			ftpClient.enterLocalPassiveMode();

			ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

			// APPROACH #1: uploads first file using an InputStream
			File firstLocalFile = new File("./temp/file1.txt");

			String firstRemoteFile = "file1.txt";
			InputStream inputStream = new FileInputStream(firstLocalFile);

			System.out.println("Start uploading first file");
			boolean done = ftpClient.storeFile(firstRemoteFile, inputStream);
			inputStream.close();
			if (done) {
				System.out.println("The first file is uploaded successfully.");
			}

		

		



		} catch (IOException ex) {
			System.out.println("Error: " + ex.getMessage());
			ex.printStackTrace();
		} finally {
			try {
				if (ftpClient.isConnected()) {
					ftpClient.logout();
					ftpClient.disconnect();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}





try{
con=databasecon.getconnection();

psmt1=con.prepareStatement("insert into ownerfile values(?,?,?,?,?,?,?)");
psmt1.setString(1,tfid);
psmt1.setString(2,u);
psmt1.setString(3,name);
psmt1.setString(4,EncryptString.encrypt(f));
fis=new FileInputStream(image);
psmt1.setBinaryStream(5, (InputStream)fis, (int)(image.length()));


psmt1.setString(6,strDateNew1);
psmt1.setString(7,fkey);



int g = psmt1.executeUpdate();
System.out.println("g value"+g);

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

	response.sendRedirect("file_upload.jsp?message=success");

	
%>

</body>
</html>