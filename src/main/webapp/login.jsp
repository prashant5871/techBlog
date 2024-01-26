<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Tech Blog | Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/style.css">
    </head>

    <body>
    <%@include file="simple_navbar.jsp" %>
        <!-- <h1>This is login page</h1>
         -->
        <div class="container-fluid primary-background p-5 background-zigzag">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <form action="LoginServlet" method="POST">
                            <div class="card-header text-center primary-background text-white">
                                <h1 class="d-flex flex-column"><i class="fa-solid fa-circle-user"></i> Login</h1>
                            </div>
                            <div class="card-body text-white" style="background-color: #8b7fe7">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email address</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                        aria-describedby="emailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                            </div>
                            <div class="card-footer text-center primary-background">
                                <button type=" submit" class="btn btn-outline-light">Submit</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <script src="https://kit.fontawesome.com/6a5a30860f.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>
    </body>

    </html>