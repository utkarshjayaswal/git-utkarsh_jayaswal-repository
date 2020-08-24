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
    
<%
String name=(String)session.getAttribute("name");
%>

    <div class="right_side_bar"> 
      
      
      
    </div>
    
    <div class="right_section">
      <div class="common_content">
                <form>
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
             <td align="center"><font color="#110022"><strong>User Name</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Field ID</strong></font></td>
              <td align="center"><font color="#110022"><strong>Key value</strong></font></td>



            </tr>
            <%
String uid=null,uname=null,meter=null,rkey=null;
ResultSet rs=null;
try
{
	Connection con=databasecon.getconnection();


	Statement st = con.createStatement();	

    	String qry="select * from keyvalue where uname='"+name+"'";
	rs =st.executeQuery(qry);
	while(rs.next())
	{
		
		uname=rs.getString("uname");
		meter=rs.getString("fileid");
		rkey=rs.getString("rkey");
		
	
	 
%>
            <tr bgcolor="#FFFFCC"> 
            
              <td align="center"><strong><font color="#6300C6"> <%=uname%> </font></strong></td>
              <td align="center"><strong><font color="#FF3300"> <%=meter%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=rkey%> </font></strong> 
              </td>
             
		  
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
    
    <!--start footer from here-->
    <div id="footer"><a href="http://www.finalsemprojects.com" target="_blank">Data Alcott </a><br>
    
	
    <!--/. end footer from here-->
  </div>
  
</div>

</body></html>

