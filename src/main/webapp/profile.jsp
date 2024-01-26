
<%@page import="java.util.Objects"%>
<%@page import="com.tech.blog.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>


<%
User u = (User) session.getAttribute("CurrentUser");
int id = 0;
String name = null;
String email = null;
String profile = null;
String gender = null;
if (Objects.isNull(u)) {
	response.sendRedirect("login.jsp");

} else {
	id = u.getId();
	name = u.getName();
	email = u.getEmail();
	gender = u.getGender();
	profile = u.getProfile();
}
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Home | user_name</title>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>

<body>
	<!-- Navbar -->
	<%@ include file="user_navbar.jsp"%>
	<!-- Navbar end -->

	<!-- Modal -->
	<div class="modal fade" id="profile" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">TechBlog</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div style="width:40%;margin:auto">
						<img class="img-fluid" alt="<%=profile %>" src="./images/<%=profile%>">
						<h3 class="text-center"><%=name %></h3>
					</div>
					<table class="table table-striped">

						<tbody>
							<tr>

								<td>id</td>
								<td><%=id%></td>

							</tr>
							<tr>

								<td>name</td>
								<td><%=name%></td>

							</tr>
							<tr>

								<td>email</td>
								<td><%=email%></td>
							</tr>

							<tr>

								<td>gender</td>
								<td><%=gender%></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Update</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal end -->

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/6a5a30860f.js"
		crossorigin="anonymous"></script>


</body>

</html>