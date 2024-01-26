<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.tech.blog.servlets.Register"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Tech Blog | Sign Up</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">

<style>
.card {
	display: flex;
	justify-content: center;
}

.al {
	display: none;
	padding: 0;
	margin: 0;
}
</style>

</head>

<body>
	<%@include file="simple_navbar.jsp"%>
	<!-- <h1>This is login page</h1>
         -->

	<div class="container-fluid primary-background background-zigzag p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div
					style="width: 100%; display: flex; justify-content: center; align-item: center"
					class="primary-background">
					<div class="spinner-border" role="status">
						<span class="sr-only">Loading...</span>
					</div>
				</div>
				<div class="card">
					<div class="alert alert-success al" role="alert">
						<h1 id="result"></h1>
					</div>

					<form action="RegisterServlet" method="POST">
						<div class="card-header text-center primary-background text-white">
							<h1 class="d-flex flex-column">
								<i class="fa-solid fa-circle-user"></i> Register Now
							</h1>

						</div>
						<div class="card-body text-white"
							style="background-color: #8b7fe7">
							<div class="mb-3">
								<label for="user_name" class="form-label">Name</label> <input
									type="text" class="form-control" id="user_name" name="name">
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email address</label> <input
									type="email" class="form-control" id="email" name="email"
									aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" id="password"
									name="password">
							</div>
							<div class="mb-3">
								<input type="radio" id="male" name="gender" value="male">
								<label for="male">Male</label> <input type="radio" id="female"
									name="gender" value="female"> <label for="female">Female</label>
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" id="checkbx"
									name="check" value="check"> <label
									class="form-check-label" for="checkgx">I agree to terms
									and condition</label>
							</div>
						</div>
						<div class="card-footer text-center primary-background">
							<button type="submit" class="btn btn-outline-light">Submit</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.7.1.js"
		integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
		crossorigin="anonymous"></script>
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
	<script src="./js/signup.js"></script>
	<script>
                //let spin = document.querySelector(".spin");
                //spin.style.display = "hide";
                $(document).ready(function () {
                    //$(".spin").css("display", "none");
                    $('.spinner-border').hide();
                    console.log("ready");
                    $("form").on("submit", function (e) {
                    	
                        e.preventDefault();
                        console.log("form submited..");
                        $(".card").hide();
                        $(".spinner-border").show();
                        $(".al").css("display","none");

                        $.ajax({
                            type: "POST",
                            url: "RegisterServlet",
                            data: $(this).serialize(),
                            success: function (response) {
                                $(".spinner-border").hide();
                                if (response == "done") {
                                    $("#result").html("Registered succesfully...");
                                }
                                $(".card").show();
                                $(".al").css("display","block");
                                setTimeout(() => {
                                    location.href = "login.jsp";
                                }, 1000);
                            },
                            error: function (xhr, status, error) {
                                console.error(xhr.responseText);
                            }
                        });

                    })
                })
            </script>
</body>

</html>