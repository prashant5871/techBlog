<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>TechBlog | Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">

</head>

<body>
	<%@include file="simple_navbar.jsp"%>
	<div
		class="container-fluid primary-background background-zigzag p-0 m-0">
		<div class="jumbotron text-white">
			<div class="container text-center p-5">
				<h1 class="display-5">Welcome to tech blog</h1>
				<p>Welcome to Tech Blog - the hub of inspiration, knowledge, and
					captivating stories in the world of tech Blog. Immerse yourself in
					a journey where every article is a new adventure waiting to be
					discovered. Whether you're a passionate enthusiast or a curious
					newcomer, our carefully crafted content is designed to inform,
					entertain, and spark your curiosity. Join our vibrant community,
					share your thoughts, and explore the limitless possibilities within
					[Your Blog Niche]. Subscribe to our newsletter for the latest
					updates, and let's embark on this exciting journey together.
					Welcome to a place where words come alive, ideas flourish, and your
					journey into the fascinating realm of Tech Blog begins!</p>

				<a class="btn btn-primary btn-md" href="signup.jsp" role="button"><i
					class="fa-solid fa-book"></i> Get Started</a> <a
					class="btn btn-primary btn-md" href="login.jsp" role="button"><i
					class="fa-solid fa-circle-user"></i> Login now</a>

			</div>
		</div>
	</div>
	<div class="container">
		<div class="card-group">
			<div class="card text-center">
				<div class="card-header primary-background text-white">
					<h5 class="card-title">Java Programming</h5>
				</div>
				<div class="card-body">
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
				<div class="card-footer text-center">
					<a href="#" class="btn bg-primary text-white">Read more</a>
				</div>
			</div>
			<div class="card text-center">
				<div class="card-header primary-background text-white">
					<h5 class="card-title">Dynamic Programming</h5>
				</div>
				<div class="card-body">
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
				<div class="card-footer text-center">
					<a href="#" class="btn bg-primary text-white">Read more</a>
				</div>
			</div>
			<div class="card text-center">
				<div class="card-header primary-background text-white">
					<h5 class="card-title">Web Development</h5>
				</div>
				<div class="card-body">
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
				<div class="card-footer text-center">
					<a href="#" class="btn bg-primary text-white">Read more</a>
				</div>
			</div>

		</div>
	</div>
	<script src="https://kit.fontawesome.com/6a5a30860f.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>

</body>

</html>