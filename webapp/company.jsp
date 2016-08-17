<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>company</title>
</head>
<body>


<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

 String cname = request.getParameter("cname");    
    String cid = request.getParameter("cid");
    String date = request.getParameter("date");
    
    String email = request.getParameter("email");
String cutoff = request.getParameter("cutoff");
String p1 = request.getParameter("package");



out.println(cname);
out.println(cid);
out.println(date);
out.println(email);
out.println(cutoff);
out.println(p1);

String url="jdbc:mysql://127.13.146.2:3306/placements";
String username="";
String pass="";

Class.forName("com.mysql.jdbc.Driver");

java.sql.Connection con=DriverManager.getConnection(url,username,pass);

Statement st= con.createStatement(); 

st.executeUpdate("insert into company(comp_name,company_id,date,email,cutoff,package) values ('" + cname + "','" + cid + "','" + date + "','" + email + "','" + cutoff + "','" + p1 + "')");

out.println("successfully updated");
%>
</body>
</html>