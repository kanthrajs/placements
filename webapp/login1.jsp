<%@ page import="java.sql.*" %>




<%

String usn = request.getParameter("usn");
String password = request.getParameter("password");

 Connection con = null;
Statement stmt = null;
ResultSet rs = null;
RequestDispatcher rd = null;
 //forward to home page by default
try {
	String url="jdbc:mysql://127.13.146.2:3306/placements";
	String username="";
	String pass="";
	//Change the next 3 lines to use correct values in your own environment
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(url,username,pass); 
	
	stmt = con.createStatement();
	rs = stmt.executeQuery("Select password from signup where usn = '" + usn + "'");	
	
	if (rs.next()) { //query only returns 1 record in the result set
		
		if (rs.getString("password").equals(password)) { //if valid password
			session.setAttribute("userid", usn);
			response.sendRedirect("home.jsp");
                    //Saves user name string in the session object			
		}
		else	{ 
		//password does not match,i.e. invalid user password
			request.setAttribute("Error", "Invalid password.");			
			rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);			
		}
	} //no record in the result set,i.e. invalid user name
	else {
		request.setAttribute("Error", "Invalid Username.");			
			rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);	
	}
}	
catch (Exception e) { //database problem
  request.setAttribute("Error", "Problem accessing security realm.");
	rd = request.getRequestDispatcher("index.jsp");
	e.printStackTrace();	
}
finally {		
	try {
		stmt.close();
		con.close();
	}
	catch (Exception ignore) {
	}
}




%>

 



