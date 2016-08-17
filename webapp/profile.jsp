 <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("userid")==null)
      {
           request.setAttribute("Error", "Session has ended.  Please login.");
		   response.sendRedirect("main-1.jsp");
	  }
      

  %> 




<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
 <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
  <!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
  <link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  
 

<nav class="navbar navbar-default navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Nie</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.jsp">HOME</a></li>
        <li><a href="#profile">PROFILE</a></li>
        <li><a href="updatee.jsp">UPDATE</a></li>
       <li id="myBtn" class="red"><a href="logoutAction.jsp">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<div class="container">
    
       <%
            String a=session.getAttribute("userid").toString();
            
          
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://127.13.146.2:3306/placements";
String username="";
String pass="";
 //Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn=DriverManager.getConnection(url,username,pass);
Statement stmt=conn.createStatement();

String query="select * from signup where usn='"+a+"'";
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<div class="well well-sm">
    <h2>User Name :<span style="padding-left:100px;"> <%=rs.getString("uname") %></span></h2>
</div>
<div class="well well-sm">
      <h2>Usn number : <span style="padding-left:100px;"> <%=rs.getString("usn") %></span></h2>
</div>
      <div class="well well-sm">
        <h2>Email-Id : <span style="padding-left:100px;"><%=rs.getString("email") %></span></h2>
      </div>
        <div class="well well-sm">
          <h2>Phone number : <span style="padding-left:100px;"> <%=rs.getString("phone") %></span></h2>
        </div>
            <div class="well well-sm">
            <h2>CGPA :<span style="padding-left:100px;"> <%=rs.getString("cgpa") %></span></h2>
            </div>
     <%

}

    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</body>
</html>