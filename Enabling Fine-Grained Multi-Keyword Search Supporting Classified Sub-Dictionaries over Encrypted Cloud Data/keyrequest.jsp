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
                 
                 <li><a href="ownerhome.jsp" class="active" >Home</a></li>
     		     <li><a href="file_upload.jsp" >File Upload</a></li>
			<li><a href="keyrequest.jsp" >Key Request</a></li>

      
      		<li><a href="index.html">Logout</a></li>



     
      </ul>
    </div>
    
<%
String name=(String)session.getAttribute("name");
%>

    <div class="right_side_bar"> 
      
      
      
    </div>
    
    <div class="right_section">
      <div class="common_content">
                <form>
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
		 <%
                                                       String message=request.getParameter("message");
                                                       
									 if(message!=null && message.equalsIgnoreCase("Request Send"))
                                                       {
                                                               out.println("<font color='red'><blink>Key Send</blink></font>");
                                                       }

                                               %>

            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
             <td align="center"><font color="#110022"><strong>User Name</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Meter Number</strong></font></td>
              <td align="center"><font color="#110022"><strong>Key value</strong></font></td>
		  <td align="center"><font color="#110022"><strong>Key value</strong></font></td>




            </tr>
            <%
String uid=null,uname=null,meter=null,rkey=null,fileid=null;
ResultSet rs=null;
try
{
	Connection con=databasecon.getconnection();
	PreparedStatement ps = null,ps1=null,ps2=null;
	ResultSet rs1 = null;


	Statement st = con.createStatement();	

	

    	String qry="select * from keyvalue";
	rs =st.executeQuery(qry);
	while(rs.next())
	{
		
		String fid=rs.getString("fileid");
		String sqlq = "select * from ownerfile where fileid ='"+fid+"' and name='"+name+"'";
		ps1 = con.prepareStatement(sqlq);
		rs1 = ps1.executeQuery();
		if(rs1.next())
		{
			
			uname=rs.getString(1);
			fileid=rs.getString(2);
			rkey=rs1.getString("fkey");
	
	 
%>
            <tr bgcolor="#FFFFCC"> 
            
              <td align="center"><strong><font color="#6300C6"> <%=uname%> </font></strong></td>
              <td align="center"><strong><font color="#FF3300"> <%=fileid%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=rs.getString(3)%> </font></strong> 
		  <td align="center"><strong><font color="#6300C6">  <a href="keysend.jsp?name=<%=uname%>&&fid=<%=fileid%>&&rkey=<%=rkey%>">Send Key</a></font></strong> 

              </td>
             
		  
          </tr>
            <%
	   }
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
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

