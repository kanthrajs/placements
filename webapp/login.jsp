<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>studentpage</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    try{
        String usn = request.getParameter("usn");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?" + "user=root&password=1234");    
        PreparedStatement pst = conn.prepareStatement("Select usn,password from signup where usn=? and password=?");
        pst.setString(1, usn);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())
            {           
         session.setAttribute("usn",usn);
         

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   
         
            response.sendRedirect("success.jsp");
            }
        else
            response.sendRedirect("index.html");           
   }
   
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
</body>
</html> 