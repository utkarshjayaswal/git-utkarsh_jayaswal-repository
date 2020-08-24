<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null,token=null;
try
{
	String a = request.getParameter("uid");
	String b= request.getParameter("pass");
	String c="yes";
	String d="owner";
	String name=null,u=null,ups=null,dws=null,uts=null;

	Connection con=databasecon.getconnection();

	Statement st = con.createStatement();

	String sss = "select * from owner where userid='"+a+"' && pass='"+b+"'&& active='"+c+"' && type='"+d+"'";

	ResultSet rs=st.executeQuery(sss);
	if(rs.next())
	{
	
		try
		{
			Connection con1=databasecon.getconnection();

			Statement st1 = con1.createStatement();

			String sss1 = "select * from owner where userid='"+a+"' && pass='"+b+"'&& active='"+c+"' && type='"+d+"'";
			ResultSet rs1=st1.executeQuery(sss1);
			while(rs1.next())
			{
				u=rs1.getString("uid");
				name=rs1.getString("name");
			}
			session.setAttribute("name",name);
			session.setAttribute("u",u);
		}
		catch(Exception e2)
		{
			out.println(e2.getMessage());
		}

		response.sendRedirect("ownerhome.jsp");
	}
	else
	{
		response.sendRedirect("ownerlogin.jsp?message=fail");
	}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>