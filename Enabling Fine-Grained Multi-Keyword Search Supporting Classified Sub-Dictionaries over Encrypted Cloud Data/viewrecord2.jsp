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
    
    <div class="right_side_bar"> 
      
      
      
    </div>
<%
String name=(String)session.getAttribute("name");

String fid = request.getParameter("fileid");
%>
 <%
String uid=null,uname=null,date=null,userid=null,pass=null,mobile=null,email=null,active=null;
String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null,l=null;

ResultSet rs=null;
try
{
	Connection con=databasecon.getconnection();


	Statement st = con.createStatement();	

    	String qry="select fileid,uid,name,keywords,b1,date,fkey from ownerfile where fileid='"+fid+"'";
	rs =st.executeQuery(qry);
	while(rs.next())
	{
		
	      a=rs.getString(1);
		b=rs.getString(2);
		c=rs.getString(3);
		d=EncryptString.decrypt(rs.getString(4));
		System.out.println(rs.getString(5));
		System.out.println(EncryptString.decrypt(rs.getString(5)));

		e=EncryptString.decrypt(rs.getString(5));
		f=rs.getString(6);
		g=rs.getString(7);

	 
           
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
    <p&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:"><font color="#FF6666"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF6666" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
</font></em></strong> <br/>

    <div class="right_section">
      <div class="common_content">
			


	
                <form>
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
            
            <tr bgcolor="#E4E4F1"> 
              <tr> 
                <td><font face="Courier New" size="+1"><strong>File ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name=a value="<%=a%>" readonly/></td>
              </tr><br>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Owner Id</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name=b value="<%=b%>" readonly/></td>
                <td></td>
              </tr><br>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Owner Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name=c value="<%=c%>" readonly/></td>
              </tr><br>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Keywords</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name=d value="<%=d%>" readonly/></td>

              </tr><br>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Content</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="e" rows="4" cols="50"><%=e%></textarea></td>
              </tr><br>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Date</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name=f value="<%=f%>" readonly/></font></strong></td>
              </tr><br>
		  <tr> 
                <td><font face="Courier New" size="+1"><strong>Key</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name=g value="<%=g%>" readonly/></font></strong></td>

              </tr><br>
		 
		 
		  

            </tr>
           
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

