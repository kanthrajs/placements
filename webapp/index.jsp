
<%
 response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>NIE Placements</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="css/bootstrap.min.css"> 
	
  <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
  <link rel="stylesheet" href="css/trycss.css">
   <link rel="stylesheet" href="css/for-about.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/script.js"></script>
  <!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

  

  <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">NIE </a>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#about" >ABOUT</a></li>
        
        <li><a href="#portfolio">GALLERY</a></li>
       
        <li><a href="#contact">CONTACT</a></li>
        <li id="myButton" class="green"><a href="#">LOGIN</a></li>
       
      </ul>
    </div>
  </div>
</nav>

<!--modal for sign in-->
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px; background-color: #629632; ">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color: #ffffff;"><span class="glyphicon glyphicon-lock"></span> Have an Account?</h4>
        </div>
        <!--body-modal-->
        <div class="modal-body"  style="padding:35px 50px;">
		
			<ul class="nav nav-tabs">
				<li class="active"><a href="#login" data-toggle="tab">Login</a></li>
				<li><a href="#create" data-toggle="tab">Create Account</a></li>
        <li><a href="#admin" data-toggle="tab">Admin Login</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active in" id="login">
				
  
  <form  role="form" action="login1.jsp" method="POST">
    
    <div class="form-group">
      <label class="control-label" for="username">Usn number:</label>
       <input type="text" class="form-control"  placeholder="Enter Usn number" name="usn">
    </div>
    
    <div class="form-group">
      <label class="control-label" for="pwd">Password:</label>
              
        <input type="password" class="form-control"  placeholder="Enter password" name="password">
      
    </div>
    
    <div class="form-group">        
      <div>
        <button type="submit" class="btn btn-success" onclick="click()">Login</button>
      </div>
    </div>
  </form>
               
				</div>
				<div class="tab-pane fade" id="create">
				<form  role="form" action="signup.jsp"   method="POST">
         
          <div class="form-group">
      <label class="control-label" for="username">Username:</label>
       <input type="text" class="form-control" id="email" placeholder="Enter Username" name="uname" required>
    </div>
     <div class="form-group">
     <label class="control-label" for="username">Usn:</label>
       <input type="text" class="form-control" id="email" placeholder="Enter Usn number" name="usn" required>
    </div>
             
    <div class="form-group">
      <label class="control-label" for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    </div>
    
    
    <div class="form-group">
      <label class="control-label" for="pwd">Password:</label>
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
    </div>
    
  <div class="form-group">
      <label class="control-label" for="pwd">Confirm Password:</label>
        <input type="password" class="form-control" id="confirm_password" placeholder="Enter password Again" name="password" required>
    </div>
    
    <div class="form-group">
      <label class="control-label" for="username">Phone no:</label>
       <input type="text" class="form-control" id="email" placeholder="Enter Phone no" name="phone" required>
    </div>
    
    <div class="form-group">
      <label class="control-label" for="username">CGPA:</label>
       <input type="text" class="form-control" id="email" placeholder="Enter CGPA" name="cgpa" required>
    </div>
    
    <div class="form-group">        
      <div>
        <button type="submit" class="btn btn-success" value="Submit">Submit</button>
      </div>
    </div>
  </form>
				</div>
        <script>
          var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>

      

        <div class="tab-pane fade" id="admin">
					<form  role="form" action="add-company.html" method="POST">
    <div class="form-group">
      
      <label class="control-label" for="username">Admin:</label>
    
    
      <input type="text" class="form-control" id="uname" placeholder="Enter Admin Username" name="uname">
    
      
    </div>
    <div class="form-group">
      <label class="control-label" for="pwd">Password:</label>
              
        <input type="password" class="form-control" id="password" placeholder="Enter Admin Password" name="password">
      
    </div>
    
    <div class="form-group">        
      <div>
        <button type="submit" class="btn btn-success" onclick="return validate()">Login</button>
      </div>
    </div>
  </form>                
				</div>
			</div>
		
	</div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          
         
        </div>
      </div>
      
    </div>
  </div> 
</div>
 

  
    <div id="about"  class="jumbotron text-center">    
    <h1>Nie Placements</h1>
    <p>Best of Nie</p>
    <button type="button" class="btn btn-success btn-lg" id="myButton1">Login</button>
    </div>
<script>
  $(document).ready(function(){
    $("#myButton").click(function(){
        $("#myModal").modal();
    });
});
</script>
    <script>
$(document).ready(function(){
    $("#myButton1").click(function(){
        $("#myModal").modal();
    });
});
</script>

  <% 

String error = (String) request.getAttribute("Error");
if (error != null) {
	out.write("<center><strong>");
	out.write("<font color=\"Red\" size=\"15px\">");
    
	out.write(error);
	out.write("</font>");
	out.write("</strong></center>");
}
%>

    <div class="container-fluid whiteback">
      <h1>National Institute Of Engineering</h1>
      <h3>Mysuru, stands at 96th position among 3800 engineering colleges in India as per National Institutional Ranking Framework released by MHRD Minister Smirti Irani just now at New Delhi.
      </h3>
    </div>
    
    <div id="portfolio" class="container-fluid text-center bg-gray">
       <h2>Gallery</h2>
  
  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/NIE.jpg" alt="gj block" width="300px">
        <p><strong>NIE</strong></p>
        <p>Golden Jubliee Center</p>
      </div>
    </div>
  
     <div class="text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/nie-1.png" alt="admin block">
        <p><strong>NIE</strong></p>
        <p>Admin Center</p>
      </div>
    </div>
 </div>
 
     <div class="text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/nie-2.jpg" alt="dj block">
        <p><strong>NIE</strong></p>
        <p>Diamond Jubliee Center</p>
      </div>
    </div>
 </div>
 </div>
    
    
     
   <div class="text-center"> 
    <h2>What our people say about Nie</h2>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
    <h4>"It is a matter of pride that NIE continues to be the ‘institute of choice’ for students from all over India when students today have vast options in selecting an engineering college"<br><span style="font-style:normal;">G.L.Shekar, Principal, NIE</span></h4>
    </div>
    <div class="item">
      <h4>"NIE was founded in 1946 by Visionary Engineers"<br><span style="font-style:normal;">SRI S Ramaswamy, SRI D.V.Narasimha Rao and SRI T.Rama Rao</span></h4>
    </div>
    <div class="item">
      <h4>"I am more happy with this college"<br><span style="font-style:normal;">Kanthraj, Student, Nie</span></h4>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
   <script src="css/animate.js"> </script>
   
   <!--for about-->
   <div class="container" id="contact">
  <div class="page-header">
    <h1 class="text-center">DEVELOPERS</h1>
  </div>
  <p class="lead text-center">Perfect Website for the Perfect People</p>
  <div class="container">
    <div class="row stylish-panel">
      <div class="col-md-3">
        <div>
          <img src="images/kanthraj.png" alt="kanthraj pic" class="img-circle img-thumbnail">
          <h2>Webdesigner</h2>
              <p> Bootstrap </p>
        <p> JSP </p>
        
         <p> MySQL </p> 
         
         <a href="https://www.facebook.com/kanthraj.nmk" target="blank"><img src="images/facebook.png" width="32px" height="32px"></a>
        </div>
      </div>
      <div class="col-md-3">
        <div>
          <img src="images/dinesh1.jpg" alt="dinesh pic" class="img-circle img-thumbnail">
          <h2>Backend</h2>
              
        <p> JSP </p>
        
         <p> MySQL </p>
          <a href="https://www.facebook.com/dinesh.kini.98" target="blank"><img src="images/facebook.png" width="32px" height="32px"></a>
          
        </div>
      </div>
      <div class="col-md-3">
        <div>
          <img src="images/chetan.JPG" alt="chetan pic" class="img-circle img-thumbnail">
          <h2>Webdesigner</h2>
          <p> Bootstrap </p>
        <p> JSP </p>
         <p> MySQL </p>
          <a href="https://www.facebook.com/chetan.rao.3956" target="blank"><img src="images/facebook.png" width="32px" height="32px"></a>
          
        </div>
      </div>
       <div class="col-md-3">
        <div>
          <img src="images/kiran.JPG" alt="kiran pic" class="img-circle img-thumbnail">
          <h2>Frontend</h2>
          <p>Html</p>
          <p> CSS   </p>
          <a href="http://www.facebook.com" target="blank"><img src="images/facebook.png" width="32px" height="32px"></a>
        </div>
      </div>
    </div>
  
  </div>
</div>
 
</body>
</html>