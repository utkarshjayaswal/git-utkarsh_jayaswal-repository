<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null,token=null;
try
{
	String a = request.getParameter("en");
	String b= request.getParameter("rkey");
	String uname=(String)session.getAttribute("name");


	Connection con=databasecon.getconnection();

	Statement st = con.createStatement();

	String sss = "select * from keyvalue where uname='"+uname+"' && fileid='"+a+"'&& rkey='"+b+"'";

	ResultSet rs=st.executeQuery(sss);
	if(rs.next())
	{
	
		response.sendRedirect("viewrecord2.jsp?fileid="+a);
	}
	else
	{
		response.sendRedirect("viewrecord.jsp?message=fail");
	}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>