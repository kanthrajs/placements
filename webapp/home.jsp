 
<%

  if(session.getAttribute("userid")==null)
      {
           request.setAttribute("Error", "Session has ended.  Please login.");
		   response.sendRedirect("main-1.jsp");
	  }
      
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  %> 


<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
 <!--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
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
        <li><a href="profile.jsp">PROFILE</a></li>
        <li><a href="updatee.jsp">UPDATE</a></li>
       <li id="myBtn" class="red"><a href="logoutAction.jsp">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="c-wrapper">
<div id="carousel-example-generic" class="carousel slide">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
         <img src="images/cisco-1.jpg" alt="cisco"  id="middle">
     
      </div> 
  
    <div class="item">
      
   
       <img src="images/SAP.png" alt=" Sap"  id="middle">
      
    </div>
     <div class="item">
        
      <img src="images/Oracle.jpg" alt="Oracle" id="middle">
       
      
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
  
</div>


<div id="main">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<form method="post">
<table class="table table-hover">
  <thead>
    <tr>
    <th>Company Name</th>
    <th>Company Id</th>
    <th>Date</th>
    <th>Email</th>
    <th>Cut-Off</th>
    <th>Package</th>

    </tr>
  </thead>
  
    <%
            String a=session.getAttribute("userid").toString();
            
            
          
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://127.13.146.2:3306/placements";
String username="";
String password="";
String qry="select cgpa,uname from signup where usn='"+a+"'";

Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet res=stmt.executeQuery(qry);
String cg="";
String name1="";
while(res.next())
{
name1=(String)res.getString("uname");

cg=(String)res.getString("cgpa");

}

    res.close();%>
 
 <h2><% out.println("Hello  " + name1); %></h2>
 
<%
float c1=Float.parseFloat(cg);

String query="select * from company where cutoff<='"+c1+"'";
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%> 
  
  
  
  <tbody>
    <tr>
      <td><%=rs.getString("comp_name") %></td>
      <td><%=rs.getString("company_id") %></td>
      <td><%=rs.getString("date") %> </td>
      <td><%=rs.getString("email") %> </td>
      <td><%=rs.getString("cutoff") %> </td>
      <td> <%=rs.getString("package") %></td>
      
    </tr>
  
  </tbody>
         <%

}
%>
</table>
 <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>


</form>
</div>


</body>
</html>