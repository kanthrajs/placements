<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String usn = "4ni13cs040";
String url="jdbc:mysql://127.13.146.2:3306/placements";
String username="";
String pass="";
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection(url,username,pass);
Statement st= con.createStatement(); 
ResultSet res = st.executeQuery("select email from signup where usn ='"+usn+"'");
if(res.next())
	out.println(res.getString(3));
else
	out.println("cannot connect");
%>


</body>
</html>