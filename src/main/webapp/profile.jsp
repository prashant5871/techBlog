
<%@page import="java.util.Objects"%>
<%@page import="com.tech.blog.entities.User" %>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
<% //response.setHeader("Pragma", "no-cache"); %>
<% //response.setHeader("Expires", "0"); %>
	
    <%
    
    
    User u=(User)session.getAttribute("CurrentUser");
    int id=0;
    String name=null;
    String email=null;
    String password=null;
    String gender=null;
    if(Objects.isNull(u)) {
    	response.sendRedirect("login.jsp"); 
 
    }else{
    id=u.getId();
    name=u.getName(); 
    email=u.getEmail();
    password=u.getPassword();
    gender=u.getGender();
    }
    %>

      <!DOCTYPE html>
      <html>

      <head>
        <meta charset="ISO-8859-1">
        <title>Home | user_name</title>
          <link rel="stylesheet" href="./css/style.css">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      </head>

      <body>

        <nav class="navbar primary-background navbar-expand-lg navbar-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="profile.jsp"><i class="fa-solid fa-blog"></i> Tech Blog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="profile.jsp"><i class="fa-solid fa-house"></i>
                    Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"><i class="fa-solid fa-circle-info"></i> About us</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    <i class="fa-solid fa-list"></i> Catagories
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Java Programming</a></li>
                    <li><a class="dropdown-item" href="#">Web development</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Dynamic programming</a></li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"><i class="fa-solid fa-envelope"></i> contact us</a>
                </li>
              </ul>

              <ul class="navbar-nav ml-auto">
				<li class="nav-item">
                  <a class="nav-link" href="logout.jsp" data-toggle="modal" data-target="#profile"><i class="fa-solid fa-circle-user"></i> <%= name %></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="logout.jsp"><i class="fa-solid fa-circle-user"></i> Log Out</a>
                </li>

              </ul>

            </div>
          </div>
        </nav>
        

<!-- Modal -->
<div class="modal fade" id="profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>





        <h1>profile...</h1>
        <h3>id : <%= id %>
        </h3>
        <h3>name : <%= name  %>
        </h3>
        <h3>password : <%= password %>
        </h3>
        <h3>gender : <%= gender %>
        </h3>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     <script src="https://kit.fontawesome.com/6a5a30860f.js" crossorigin="anonymous"></script>
 
 
      </body>

      </html>