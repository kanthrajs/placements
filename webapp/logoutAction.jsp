





 <%
 
  
   	session.removeAttribute("userid");
	if (session != null) {
		session.invalidate();
     response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
	}
	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	
  
 

  rd.forward(request, response); 
      

  %> 

