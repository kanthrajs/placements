<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signin</title>
</head>
<body>


<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

 String uname = request.getParameter("uname");    
    String password = request.getParameter("password");
    String usn = request.getParameter("usn");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
String cgpa = request.getParameter("cgpa");
RequestDispatcher rd = null;
String url="jdbc:mysql://127.13.146.2:3306/placements";
String username="";
String pass="";
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection(url,username,pass);
Statement st= con.createStatement(); 

int flag=1;
String query="select usn from signup where usn ='"+usn+"'";
ResultSet rs1=st.executeQuery(query);

while(rs1.next())
{
   flag=0;
}

if(flag==1)
{
int i=st.executeUpdate("insert into signup(uname,usn,password,phone,email,cgpa) values ('" + uname + "','" + usn + "','" + password + "','" + phone + "','" + email + " ','" + cgpa + "')");
if(i>0)
{
request.setAttribute("Error", "Sucessfully Registered.");			
			rd = request.getRequestDispatcher("index.jsp");	
}
else
{
request.setAttribute("Error", "Something went wrong.Please Try again.");			
			rd = request.getRequestDispatcher("index.jsp");	
}
}
else
{
request.setAttribute("Error", "Already Registered please login!!.");			
			rd = request.getRequestDispatcher("index.jsp");	
}
 
 rs1.close();
 st.close();
 con.close();

rd.forward(request, response);
%>
</body>
</html>