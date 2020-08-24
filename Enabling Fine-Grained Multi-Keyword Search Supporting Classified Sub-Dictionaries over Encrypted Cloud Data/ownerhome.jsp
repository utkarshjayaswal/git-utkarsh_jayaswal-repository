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

      </ul>
    </div>
    
    <div class="right_side_bar"> 
      
      
      
    </div>
<%
String name=(String)session.getAttribute("name");
%>
    <p&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:">Owner
      Home:    <font color="#FF6666"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF6666" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
</font></em></strong> <br/>

    <div class="right_section">
      <div class="common_content">
			
	<table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="125" border="0">
            <tr  bgcolor="#33CCFF"> 
		
	   </table>
      <div class="box"> 
        <form>
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center"><font color="#110022"><strong>Owner ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Name</strong></font></td>
              <td align="center"><font color="#110022"><strong>Keywords</strong></font></td>
              <td align="center"><font color="#110022"><strong>File ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Date</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Key</strong></font></td>
              
            </tr>
            <%
			String u=(String)session.getAttribute("u");
			
			String uname=(String)session.getAttribute("name");
			

			String date=null,fid=null,fname=null,key=null,uid=null,keywords=null;
ResultSet rs=null;
String all="allow";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from ownerfile where uid='"+u+"' && name='"+uname+"'" ;
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	fid=rs.getString("fileid");
	uid=rs.getString("uid");
	keywords=EncryptString.decrypt(rs.getString("keywords"));
	uname=rs.getString("name");
	fname=rs.getString("name");
	key=rs.getString("fkey");
	date=rs.getString("date");
	
	 
%>
            <tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="#6300C6"> <%=uid%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=uname%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=keywords%> </font></strong></td>
              <td align="center"><strong><font color="#FF3300"> <%=fid%> </font></strong></td>
		   <td align="center"><strong><font color="#6300C6"> <%=date%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=key%> </font></strong></td>
              
		  
			
            </tr>
            <%
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
    
   
  </div>
  
</div>

</body></html>

