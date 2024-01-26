<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
	<%
	
	session.removeAttribute("CurrentUser");
	
	
	%>
	<script type="text/javascript">
	
		location.href = "login.jsp";
	</script>
</body>
</html>