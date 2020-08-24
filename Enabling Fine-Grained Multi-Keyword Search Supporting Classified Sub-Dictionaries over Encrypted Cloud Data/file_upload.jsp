<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multi-Keyword Search in Cloud computing</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<script type="text/javascript">

function valid()
{
var a=document.s.fn.value;
if(a=="")
{
alert("Enter File Name");
document.s.fn.focus();
return false;
}
var b=document.s.file.value;
if(b=="")
{
alert("Browse a File");
document.s.file.focus();
return false;
}
if(document.s.server.selectedIndex==0)
{
alert("Select a Cloud Server");
document.s.server.focus();
return false;
}



}

</script>

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
<strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:">File Upload:    <font color="#FF6666"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF6666" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
</font></em></strong> <br/>
    
    <div class="right_side_bar"> 
      
      

    </div>
		
			


    
    <div class="right_section">
      <div class="common_content">
	<table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="125" border="0">
            <tr  bgcolor="#33CCFF"> 
		
	   </table>

        <div class="box"> 
          <form name="s" action="file_upload1.jsp" method="get" onsubmit="return valid()">
            <table align="center" cellpadding="20" cellspacing="20" width="600">
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red'>File Successfully Uploaded !</font>");
                                                       }
                                               %>
                  </b></font></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;Owner Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <em><strong><font color="#336633" size="+1"><%=name%></font></strong></em></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;Keywords</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="fn" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;Upload 
                  File</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="file" name="file" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                  Key</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="fkey" class="b" value="<%=(int)(Math.random()*10000)%>"></td>
              </tr>
              <tr> 
                <td></td>
		    
              <td><input type="submit" name="s" value="Upload" class="b1" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="reset" name="r" value="clear" class="b1"></td>
		
                
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

