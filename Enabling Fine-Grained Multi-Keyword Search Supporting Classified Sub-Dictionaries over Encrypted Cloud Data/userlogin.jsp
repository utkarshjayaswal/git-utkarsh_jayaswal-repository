<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multi-Keyword Search in Cloud computing</title>
<meta name="description" content="A description of your website">
<meta name="keywords" content="keyword1, keyword2, keyword3">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function valid()
{
var a=document.s.uid.value;
if(a=="")
{
alert("Enter ID");
document.s.uid.focus();
return false;
}
var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}



}

</script>
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
                   <li><a href="#" class="active">Home</a></li>
			<li><a href="ownerlogin.jsp" >Owner Login</a></li>
      		<li><a href="userlogin.jsp">User Login</a></li>
      		<li><a href="signup.jsp">Sign up</a></li>


      </ul>
    </div>
    
    <div class="right_side_bar"> 
      
      
      
    </div>
    
    <div class="right_section">
      <div class="common_content">
          <form name="s" action="userlogin1.jsp" method="get" onsubmit="return valid()">
            <table align="center" cellpadding="20" cellspacing="20" width="500">
              <tr> 
                <td><font face="Courier New" size="+1"><strong><img src="images/login1.png">&nbsp;&nbsp;USER 
                  ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong><img src="images/login.png">&nbsp;&nbsp;Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" class="b"></td>
              </tr>
              <tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>Your username and password is incorrect </blink></font>");
                                                       }
                                               %>
                  </b></font></td>
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

