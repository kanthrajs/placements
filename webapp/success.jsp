<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
<title>Page Redirection</title>
</head>
<body>

<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>

<%

 
  
    if ((session.getAttribute("usn") == null) || (session.getAttribute("usn") == "")) {

 response.sendRedirect("index.html");

}


 else {
         response.sendRedirect("home.jsp");
    }
%>


</body>
</html>