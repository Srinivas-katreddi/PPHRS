<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Doctor Registration Page</title>
<meta name="description" content="">
<meta name="keywords" content="">

	<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Fonts -->
<link href="https://fonts.googleapis.com" rel="preconnect">
<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

	<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	<!-- Main CSS File -->
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">


	<!-- =======================================================
  * Template Name: iLanding
  * Template URL: https://bootstrapmade.com/ilanding-bootstrap-landing-page-template/
  * Updated: Nov 12 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style type="text/css">
input.form-control, p {
	width: 100%; /* Adjust this value as needed */
	max-width: 500px; /* Optional: Set a max width */
	margin: auto; /* Center align if needed */
}

label {
	font-weight: bold;
}
form.view {
    border: 1px solid transparent; /* Hide actual border */
    box-shadow: 0 0 15px rgba(0, 123, 255, 0.5); /* Blue shadow */
    background-color: white;
    text-align: left;
    padding: 10px; /* Keep uniform padding */
    margin: auto;
    display: flex; /* Center the table */
}
  
input, textarea {
  border: 2px solid #007bff; /* Blue border */
  border-radius: 5px; /* Rounded corners */
  padding: 8px;
  outline: none; /* Remove default focus outline */
  transition: border-color 0.3s ease-in-out;
  outline:none;
  resize:none;
}
form{
  border-radius: 10px; /* Rounded corners */

}
/* Change border color on focus */
input:focus, textarea:focus {
  border-color: #ff5733; /* Change to orange when focused */
  box-shadow: 0 0 5px rgba(255, 87, 51, 0.5);
}

</style>
</head>

<body class="index-page">

	<header id="header" class="header d-flex align-items-center fixed-top">
		<div
			class="header-container container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

			<a href="Home.html"
				class="logo d-flex align-items-center me-auto me-xl-0"> <!-- Uncomment the line below if you also wish to use an image logo -->
				<img src="assets/img/logo.png" alt=""> <!--<h1 class="Home.html" style="color:blue; border: 3px solid blue;border-radius:25%;padding:3px;">11</h1>--></a>

			<nav id="navmenu" class="navmenu">
				<ul>
				         <li><a href="index.html" >Home</a></li>
				
					<li><a href="c_login.jsp"><span>Healthcare Cloud</span></a></li>
					<li><a href="d_login.jsp" class="active"><span>Doctor</span></a></li>
					<li><a href="p_login.jsp"><span>Patient</span></a></li>
					<li><a href="w_login.jsp"><span>Hospitals</span></a></li>
					<li><a href="i_login.jsp"><span>Intruder</span></a></li>
				</ul>

				<i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
			</nav>

 <a class="btn-getstarted" href="javascript:history.back();">Back</a>

		</div>
	</header>
	<form action="d_RegIns.jsp" method="post" enctype="multipart/form-data">

		<div class="content">
		
			<div class="content_resize">
				<div class="mainbar">
				
					<div class="article">
						<div class="signin-form">
							<h2 class="form-title">Doctor Sign Up</h2>
						</div>
					</div>
					<div class="content" style="margin-top: 20px; width: 80%;">
						<div class="content_resize">
						
							<div class="article">
								<div class="mb-3">
									<div class="container mt-4">
										<div class="row justify-content-center">
											<div class="col-md-6">
												<form action="d_RegIns.jsp" class="p-4 bg-light rounded shadow">
												
													<div class="mb-3">
														<label for="userid" class="form-label">Name</label> <input
															id="userid" name="userid" class="form-control" required />
													</div>

													<div class="mb-3">
														<label for="password" class="form-label">Password</label>
														<input type="password" id="password" name="pass"
															class="form-control" required />
													</div>

													<div class="mb-3">
														<label for="email" class="form-label">Email ID</label> <input
															id="email" name="email" type="email" class="form-control"
															required />
													</div>

													<div class="mb-3">
														<label for="mobile" class="form-label">Mobile</label> <input
															id="mobile" name="mobile" type="tel" class="form-control"
															required />
													</div>

													<div class="mb-3">
														<label for="address" class="form-label">Your
															Address</label>
														<textarea name="address" id="address" class="form-control"
															rows="3" required></textarea>
													</div>

													<div class="mb-3">
														<label for="dob" class="form-label">Date of Birth</label>
														<input type="date" id="dob" name="dob"
															class="form-control" required />
													</div>

													<div class="mb-3">
														<label for="gender" class="form-label">Select
															Gender</label> <select id="gender" name="gender"
															class="form-select" required>
															<option value="">-Select-</option>
															<option value="Male">Male</option>
															<option value="Female">Female</option>
														</select>
													</div>

													<div class="mb-3">
														<label for="pincode" class="form-label">Enter
															Pincode</label> <input id="pincode" name="pincode" type="text"
															class="form-control" required />
													</div>

													<div class="mb-3">
														<label for="location" class="form-label">Enter
															Location</label> <input id="location" name="location" type="text"
															class="form-control" required />
													</div>

													<div class="mb-3">
														<label for="pic" class="form-label">Select Profile
															Picture</label> <input type="file" id="pic" name="pic"
															class="form-control" required />
													</div>

													<div class="d-flex justify-content-between">
														<button type="submit" class="btn btn-primary w-45">Register</button>
														<button type="reset" class="btn btn-secondary w-45">Reset</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</form>

	<div class="sidebar">
		<div class="searchform">
			<form id="formsearch" name="formsearch" method="post" action="#">
				<span> <input name="editbox_search" class="editbox_search"
					id="editbox_search" maxlength="100" value="Search our site:"
					type="text" />
				</span> <input name="button_search" src="images/search.png"
					class="button_search" type="image" />
			</form>
		</div>
		<div class="clr"></div>
		<div class="gadget">
			<h2 class="star">
				<span>Sidebar</span> Menu
			</h2>
			<div class="clr"></div>
			<ul class="sb_menu">
				<li><a href="c_login.jsp"><span>Healthcare Cloud</span></a></li>
				<li><a href="d_login.jsp" style="boder:20px solid var(--accent-color);
  background-color: color-mix(in srgb, var(--accent-color), black 20%);
 color:white;"><span>Doctor</span></a></li>
				<li><a href="p_login.jsp"><span>Patient</span></a></li>
				<li><a href="w_login.jsp"><span>Hospitals</span></a></li>
				<li><a href="i_login.jsp"><span>Intruder</span></a></li>
			</ul>
		</div>
		<div class="gadget">
			<h2 class="star">
				<span>Concepts</span>
			</h2>
			<div class="clr"></div>
			<ul class="ex_menu">
				<li><span class="infopost style2">Artificial
						intelligence, </span></li>
				<li><span class="infopost style2">blockchain, </span></li>
				<li><span class="infopost style2">federated learning, </span></li>
				<li><span class="infopost style2">privacy, pandemic</span></li>
			</ul>
		</div>
	</div>
	<div class="clr"></div>

</body>
</html>
