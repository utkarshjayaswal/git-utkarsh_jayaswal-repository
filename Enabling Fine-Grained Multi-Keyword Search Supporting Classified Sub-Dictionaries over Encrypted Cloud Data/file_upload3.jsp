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
 			<li><a href="ownerhome.jsp" class="active" >Home</a></li>
     		     <li><a href="file_upload.jsp" >File Upload</a></li>
			<li><a href="keyrequest.jsp" >Key Request</a></li>

      
      		<li><a href="index.html">Logout</a></li>


      </ul>
    </div>

<%
String u=(String)session.getAttribute("u");
String name=(String)session.getAttribute("name");
String f=(String)session.getAttribute("f");
String kbs=(String)session.getAttribute("kbs");
String tfid=(String)session.getAttribute("tfid");
	
	//System.out.println(a);
	Blob file1= null,file2=null,file3=null;
	String data1=null,data2=null,data3=null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select * from temp where fileid ='"+tfid+"'";
	
	try
	{
		con=databasecon.getconnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
		file1 = rs.getBlob(3);
		
		}
		byte[] bdata = file1.getBytes(1, (int)file1.length());
        data1 = new String(bdata);
        System.out.println(data1);
	  data1=EncryptString.encrypt(data1);	
	  System.out.println(data1);

	
	}
		catch(Exception e)
	{
	out.println("Exception :"+e);
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
	//session.setAttribute("resumeBlob",file);
    //response.sendRedirect("view_proof.jsp");
	
	%>
    
    <div class="right_side_bar"> 
      
      
      
    </div>
    
    <div class="right_section">
      <div class="common_content">
        <form name="s" action="upload_to_tpa.jsp" method="post" onsubmit="return valid()">
          <table width="799" height="400" align="center" cellpadding="20" cellspacing="20">
            <tr> 
              <td width="166"><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;Keywords&nbsp;&nbsp;&nbsp;:</strong></font></td>
              <td width="351">&nbsp;&nbsp;&nbsp;&nbsp; <em><strong><font color="#FF3333" size="+1"><%=f%></font></strong></em></td>
            </tr>
            
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Block1&nbsp;:</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="b1" cols="45" rows="4" class="b"><%=data1%></textarea></td>
            </tr>
            <tr> 
              <td></td>
              <td align="center"><input type="submit" name="s" value="upload" class="b" > 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <a href="delete_back.jsp"><img src="images/back.png" width="50" height="50"> 
                <font color="#FF0000" size="+1"><strong>Back</strong></font></a></td>
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

