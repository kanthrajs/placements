<html>
 <head>   
<title>Logout Sample JSP 1</title>
 </head>
 <body>
<%

String userName = (String) session.getAttribute("userid");
if (null == userName) {
	request.setAttribute("Error", "Session has ended.  Please login.");
	RequestDispatcher rd = request.getRequestDispatcher("main-1.html");
	rd.forward(request, response);
}
%>

<form action="logoutAction.jsp">
<table class="tborder" width="50%" cellspacing="1" cellpadding="3" align="center">	
	<tr>
		<td colspan="2"> Are you sure you would like to logout?</td>			
	</tr>		
	<tr>
		<td> 
			<input type="submit" id="submit" name="submit" value="OK"></input>
		</td>
		<td> 
			<input type="submit" id="submit" name="submit" value="Cancel"></input>
		</td>
	</tr>
</table>
<br/>

</form>
 </body>
</html>