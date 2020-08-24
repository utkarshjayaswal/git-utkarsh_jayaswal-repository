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
%>
    <p&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:"><font color="#FF6666"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF6666" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
</font></em></strong> <br/>

    <div class="right_section">
      <div class="common_content">
			


	 <div class="common_content">
          <form name="s" action="search.jsp" method="get" onsubmit="return valid()">
            <table align="center" cellpadding="20" cellspacing="25" width="900">
              <tr> 
                <td colspan="6" align="center"><font size="2"><b> 
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>File id Not Available</blink></font>");
                                                       }
									 if(message!=null && message.equalsIgnoreCase("Request Send"))
                                                       {
                                                               out.println("<font color='red'><blink>Request Send</blink></font>");
                                                       }

                                               %>
                  </b></font></td>
              </tr>
              
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Enter Keywords</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="k1" ></td>
		    <td>&nbsp;&nbsp;&nbsp;&nbsp; 
					    <select name="a1">
  						<option value="and" selected>AND</option> 
 						 <option value="or" >OR</option>
						<option value="not" >NOT</option>

 						
						</select>
			</td>

		    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="k2"></td>
		   <td>&nbsp;&nbsp;&nbsp;&nbsp; 
					    <select name="a2">
  						<option value="and" selected>AND</option> 
 						 <option value="or" >OR</option>
						<option value="not" >NOT</option>


 						
						</select>
			</td>

		    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="k3"></td>
		    

              </tr>
              
                <td></td><td></td>
<td></td>
<td></td>
<td></td>


                <td><input type="submit" name="s" value="Submit" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 </td>
			<td></td>

              </tr>
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

