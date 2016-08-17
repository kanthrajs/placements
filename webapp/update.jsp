  <%

String userName = (String) session.getAttribute("userid");
if (null == userName) {
	request.setAttribute("Error", "Session has ended.  Please login.");
	RequestDispatcher rd = request.getRequestDispatcher("main-1.jsp");
	rd.forward(request, response);
}
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Student</title>
</head>
<body>
    


<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<form method="post">

   <%
            String a=session.getAttribute("userid").toString();
            
int updateQuery=0;          
try
{
 String phone = request.getParameter("phone");   
        String email = request.getParameter("email");
String cgpa=request.getParameter("cgpa");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://127.13.146.2:3306/placements";
String username="";
String pass="";
// Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn=DriverManager.getConnection(url,username,pass);

PreparedStatement pst = conn.prepareStatement("update signup set phone='"+phone+"',email='"+email+"',cgpa='"+cgpa+"' where usn='"+a+"'");
        
 updateQuery = pst.executeUpdate();
if(updateQuery!=0)
{

%>
   <% response.sendRedirect("profile.jsp"); %>

   
        <%

}
%>
    </table>
    <%
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</body>
</html> 