<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%

String u=(String)session.getAttribute("u");


FileInputStream fis;

try{
Connection con=databasecon.getconnection();

String l = "./temp/file1.txt";
String sql=null;
File image=new File(l);

PreparedStatement psmt1=con.prepareStatement("insert into temp(uid,b1) values(?,?)");
psmt1.setString(1,u);

fis=new FileInputStream(image);
psmt1.setBinaryStream(2, (InputStream)fis, (int)(image.length()));
psmt1.executeUpdate();

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}


String fid=null;
try{
Connection con4=databasecon.getconnection();

PreparedStatement ps=con4.prepareStatement("select * from temp where uid='"+u+"'");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
fid=rs.getString("fileid");
}
session.setAttribute("tfid",fid);
response.sendRedirect("file_upload3.jsp");

}
catch(Exception e1)
{

out.println("Error in connection : "+e1);

}



%>

