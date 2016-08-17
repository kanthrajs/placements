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
  <title>Update</title>
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
        <li><a href="profile.jsp">PROFILE</a></li>
        <li><a href="#update">UPDATE</a></li>
       <li id="myBtn" class="red"><a href="logoutAction.jsp">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <h2>Update Specific Requirements</h2>
  <form role="form" action="update.jsp" method="POST">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="phone">Phone Number:</label>
      <input type="text" class="form-control" id="phone" placeholder="Enter phone number" name="phone">
    </div>
    <div class="form-group">
      <label for="cgpa">CGPA:</label>
      <input type="text" class="form-control" id="cgpa" placeholder="Enter cgpa" name="cgpa">
    </div>
   
    <button type="submit" class="btn btn-default" onclick="click()">Submit</button>
  </form>
</div>
</body>
</html>