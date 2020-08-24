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
	
	String fid=request.getParameter("en");
	String name=(String)session.getAttribute("name");
	System.out.println(fid);
	System.out.println(name);


	//System.out.println(a);
	
	String uid=null,uname=null,date=null,userid=null,pass=null,mobile=null,email=null,active=null,type=null;

	String data1=null,data2=null,data3=null;
	Connection con=databasecon.getconnection();


	PreparedStatement ps = null,ps1=null,ps2=null;
	ResultSet rs = null,rs1 = null;
	String sql=null;
	String a="No key";
	try
	{
		
		
		String sqlq = "select * from keyvalue where fileid ='"+fid+"' and uname='"+name+"'";
		ps1 = con.prepareStatement(sqlq);
		rs1 = ps1.executeQuery();
		if(rs1.next())
		{
			ps1=con.prepareStatement("update keyvalue set rkey=? where fileid =? and uname=? ");
			ps1.setString(1,a);
			ps1.setString(2,fid);
			ps1.setString(3,name);
			ps1.executeUpdate();
		} else {
			ps1=con.prepareStatement("insert into keyvalue values(?,?,?)");
			ps1.setString(1,name);
			ps1.setString(2,fid);
			ps1.setString(3,a);
			ps1.executeUpdate();
		}

		response.sendRedirect("userhome.jsp?message=Request Send");
	
	
	}
		catch(Exception e2)
	{
		out.println("Exception :"+e2);
	}
	
	
	%>

   

