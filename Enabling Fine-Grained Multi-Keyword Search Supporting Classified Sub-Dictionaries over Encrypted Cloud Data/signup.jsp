<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
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
                <li><a href="#" class="active">Home</a></li>
			<li><a href="ownerlogin.jsp" >Owner Login</a></li>
      		<li><a href="userlogin.jsp">User Login</a></li>
      		<li><a href="signup.jsp">Sign up</a></li>

      </ul>
    </div>
    
<script type="text/javascript">

function valid()
{
var aa=document.s.un.value;
if(aa=="")
{
alert("Enter Name");
document.s.un.focus();
return false;
}

var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
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


var k = document.s.mob.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mob.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mob.focus();
return false;
}

if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mob.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eid.focus();
return false;
}

}

</script>


<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
String u=null;int u2=0,u1=0;
try
{
Connection con=databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from owner");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
u=rs.getString("uid");
}
if(u==null)
{
 u2=u1+1;
}
else
{
u1=Integer.parseInt(u);
u2=u1+1;
}
String u3=Integer.toString(u2);
session.setAttribute("u3",u3);
%>

    <div class="right_side_bar"> 
      
      
      
    </div>
    
    <div class="right_section">
      <div class="common_content">
          <form name="s" action="signup1.jsp" method="get" onsubmit="return valid()">
            <table align="center" cellpadding="20" cellspacing="25" width="500">
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red'><blink>Registered Successfully !</blink></font>");
                                                       }
                                               %>
                  </b></font></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font face="Courier New" size="+1" color="#993300"><%=u3%></font></strong></td>
                <td></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="un" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>User ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Mobile</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mob" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Email ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eid" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Date</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="date" class="b" value="<%=strDateNew1%>"></td>
              </tr>
		   <tr> 
                <td><font face="Courier New" size="+1"><strong>Type</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; 
					    <select name="select">
  						<option value="owner">Owner</option> 
 						 <option value="user" selected>User</option>
 						
						</select>
			</td>
              </tr>

              <tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > 
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
    
    
  </div>
  
</div>

</body></html>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
