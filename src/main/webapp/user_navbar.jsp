<nav class="navbar primary-background navbar-expand-lg navbar-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="profile.jsp"><i
			class="fa-solid fa-blog"></i> Tech Blog</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="profile.jsp"><i
						class="fa-solid fa-house"></i> Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fa-solid fa-circle-info"></i> About us</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="fa-solid fa-list"></i> Catagories
				</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Java Programming</a></li>
						<li><a class="dropdown-item" href="#">Web development</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#">Dynamic programming</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fa-solid fa-envelope"></i> contact us</a></li>
			</ul>

			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="logout.jsp"
					data-toggle="modal" data-target="#profile"><i
						class="fa-solid fa-circle-user"></i> <%=name%></a></li>
				<li class="nav-item"><a class="nav-link" href="logout.jsp"><i
						class="fa-solid fa-circle-user"></i> Log Out</a></li>

			</ul>

		</div>
	</div>
</nav>