<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multi-Keyword Search in Cloud computing</title>
<meta name="description" content="A description of your website">
<meta name="keywords" content="keyword1, keyword2, keyword3">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="wrapper"> 
  
  <div id="header"> 
    
    <div class="top_banner">
      <h1>Multi-Keyword Search in Cloud computing</h1>

    </div>

  </div>
  
  <div id="page_content">
    
    <div class="navigation">
      <ul>
                <li><a href="userhome.jsp" class="active" >Home</a></li>
			<li><a href="viewkey.jsp" class="active" >View Key</a></li>
			<li><a href="viewrecord.jsp" class="active" >View File</a></li>


     
      		<li><a href="index.html">Logout</a></li>


    
      </ul>
    </div>
	<table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center"><font color="#110022"><strong>Owner ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Name</strong></font></td>
              <td align="center"><font color="#110022"><strong>Keywords</strong></font></td>
              <td align="center"><font color="#110022"><strong>File ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Date</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Key</strong></font></td>
		  <td align="center"> <font color="#110022"><strong>Request Key</strong></font></td>

              
            </tr>

    <%
	
	String k1=request.getParameter("k1");
	String k2=request.getParameter("k2");
	String k3=request.getParameter("k3");
	
	String a1=request.getParameter("a1");
	String a2=request.getParameter("a2");
	

	//System.out.println(a);
	
	String uid=null,uname=null,date=null,userid=null,pass=null,mobile=null,email=null,active=null,type=null;
	String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null,l=null;
	String data1=null,data2=null,data3=null;
	Connection con=databasecon.getconnection();


	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql=null;
	sql = "select * from ownerfile";
	System.out.println(sql);
	
	try
	{
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
			String ss = EncryptString.decrypt(rs.getString("keywords"));

			a=rs.getString(1);
			b=rs.getString(2);
			c=rs.getString(3);
			d=ss;
			e=rs.getString(5);
			f=rs.getString(6);
			g=rs.getString(7);

			System.out.println("Decrypt String "+ss);
			boolean c1 = ss.contains(k1);
			boolean c2 = ss.contains(k2);
			boolean c3 = ss.contains(k3);
			System.out.println(c1);
			System.out.println(c2);
			System.out.println(c3);
			System.out.println(a1);
			System.out.println(a2);


			if(a1.equals("and"))
			{
				if(c1 && c2)
				{
					System.out.println(k1 + "AND" +k2);
					if(a2.equals("and"))
					{
						if(c1 && c2 && c3)
						{

							System.out.println(k1 + "AND" +k2 + "AND" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%

						}

					}
					if(a2.equals("or"))
					{
						if(c1 && c2 || c3)
						{

							System.out.println(k1 + "AND" +k2 + "OR" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}
					}
					if(a2.equals("not"))
					{
						if(c1 && c2 && !(c3))
						{

							System.out.println(k1 + "AND" +k2 + "NOT" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}
					}


				}
			}
			if(a1.equals("or"))
			{
				if(c1 || c2)
				{
					System.out.println(k1 + "OR" +k2);
					if(a2.equals("and"))
					{
						if(c1 || c2 && c3)
						{

							System.out.println(k1 + "OR" +k2 + "AND" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}

					}
					if(a2.equals("or"))
					{
						if(c1 || c2 || c3)
						{

							System.out.println(k1 + "OR" +k2 + "OR" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}
					}
					if(a2.equals("not"))
					{
						if(c1 || c2 && !(c3))
						{

							System.out.println(k1 + "OR" +k2 + "NOT" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}
					}

				}


			}
			if(a1.equals("not"))
			{
				if(!(c1 && c2))
				{
					System.out.println(k1 + "NOT" +k2);
					
					if(a2.equals("and"))
					{
						if(!(c1 && c2) && c3)
						{

							System.out.println(k1 + "NOT" +k2 + "AND" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}

					}
					if(a2.equals("or"))
					{
						if(!(c1 && c2) || c3)
						{

							System.out.println(k1 + "NOT" +k2 + "OR" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}
					}
					if(a2.equals("not"))
					{
						if(!(c1 && c2) && !(c3))
						{

							System.out.println(k1 + "NOT" +k2 + "NOT" +k3);
							%>
            					<tr bgcolor="#FFFFCC"> 

              					<td align="center"><strong><font color="#6300C6"> <%=b%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=c%> </font></strong></td>
		  					<td align="center"><strong><font color="#FF3300"> <%=d%> </font></strong></td>
		 					<td align="center"> <strong><font color="#6300C6"> <%=a%> </font></strong></td>

              
		   					<td align="center"><strong><font color="#6300C6"> <%=f%> </font></strong></td>
              					<td align="center"><strong><font color="#6300C6"> <%=g%> </font></strong></td>
		  					<td align="center"><strong><font color="#6300C6"> <a href="rkey.jsp?en=<%=a%>">rkey</a> </font></strong></td>
					            </tr>
            					<%


						}
					}

				}

			}


			

		}
		
	
	
	}
		catch(Exception e2)
	{
	out.println("Exception :"+e2);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	
	%>

   <div class="right_side_bar"> 
      
      
      
    </div>
<%
String name=(String)session.getAttribute("name");
%>
    <p&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:"><font color="#FF6666"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF6666" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
</font></em></strong> <br/>

    <div class="right_section">
      <div class="common_content">
      <form name="s" action="search1.jsp" method="post" ">
             <table align="center" cellpadding="20" cellspacing="20" width="600">
              
             
            
            </table>

        </form>

        </div>
      <div class="top_content">
      </div>
    </div>
    
    <div class="clear"></div>
    
    <!--start footer from here-->
    <div id="footer"><a href="http://www.finalsemprojects.com" target="_blank">Data Alcott </a><br>
    
	
    <!--/. end footer from here-->
  </div>
  
</div>

</body></html>

