%

String action = (String) request.getParameter("submit");
if (action.equalsIgnoreCase("OK")) {


try {
	//Change the next 3 lines to use correct values in your own environment
	Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","1234"); 
	
	stmt = con.createStatement();
	rs = stmt.executeQuery("Select password from signup where usn = '" + usn + "'");	
	


	
}
%>