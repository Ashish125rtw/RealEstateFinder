<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Signup</title>

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

	<%@ include file="navbar.jsp"%>
	<main>
		<div class="container">
			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-5 col-md-6 d-flex flex-column align-items-center justify-content-center">



							<div class="card mb-3">
								<div class="card-body">
									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Create an
											Account</h5>
										<p class="text-center small">Enter your personal details
											to create an account</p>
									</div>

									<form class="row g-3 needs-validation" action="saveuser"
										method="post" novalidate enctype="multipart/form-data">
										<!-- First Name -->
										<div class="col-12">
											<label for="firstName" class="form-label">First Name</label>
											<input type="text" name="firstName" class="form-control"
												id="firstName" required>
											<div class="invalid-feedback">Please enter your first
												name!</div>
										</div>

										<!-- Last Name -->
										<div class="col-12">
											<label for="lastName" class="form-label">Last Name</label> <input
												type="text" name="lastName" class="form-control"
												id="lastName" required>
											<div class="invalid-feedback">Please enter your last
												name!</div>
										</div>

										<!-- Email -->
										<div class="col-12">
											<label for="email" class="form-label">Email</label> <input
												type="email" name="email" class="form-control" id="email"
												required>
											<div class="invalid-feedback">Please enter a valid
												email address!</div>
										</div>

										<!-- Contact Number -->
										<div class="col-12">
											<label for="contactNum" class="form-label">Contact
												Number</label> <input type="text" name="contactNum"
												class="form-control" id="contactNum" required>
											<div class="invalid-feedback">Please enter your contact
												number!</div>
										</div>

										<!-- Password -->
										<div class="col-12">
											<label for="password" class="form-label">Password</label> <input
												type="password" name="password" class="form-control"
												id="password" required>
											<div class="invalid-feedback">Please enter your
												password!</div>
										</div>

										<!-- Gender -->
										<div class="col-12">
											<label class="form-label">Gender</label>
											<div class="d-flex gap-3">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="gender"
														value="Male" id="male" required> <label
														class="form-check-label" for="male">Male</label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio" name="gender"
														value="Female" id="female" required> <label
														class="form-check-label" for="female">Female</label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio" name="gender"
														value="Other" id="other" required> <label
														class="form-check-label" for="other">Other</label>
												</div>
											</div>
											<div class="invalid-feedback">Please select your
												gender!</div>
										</div>

										<!-- Role -->
										<div class="col-12">
											<label for="role" class="form-label">Select Role</label> <select
												name="role" class="form-control" id="role" required>
												<option value="" disabled selected>Select Role</option>

												<option value="Buyer">Buyer</option>
												<option value="Seller">Seller</option>
												<option value="Agent">Agent</option>
											</select>
											<div class="invalid-feedback">Please select a role!</div>
										</div>
										<!-- Profile Picture Upload -->
										<div class="col-12">
											<label for="profilePic" class="form-label">Profile
												Picture</label> <input type="file" name="profilePic"
												class="form-control" id="profilePic" accept="image/*"
												required>
											<div class="invalid-feedback">Please upload your
												profile picture!</div>
										</div>

										<!-- Terms -->
										<div class="col-12">
											<div class="form-check">
												<input class="form-check-input" name="terms" type="checkbox"
													value="" id="acceptTerms" required> <label
													class="form-check-label" for="acceptTerms"> I agree
													and accept the <a href="#">terms and conditions</a>
												</label>
												<div class="invalid-feedback">You must agree before
													submitting.</div>
											</div>
										</div>
										<!-- Submit Button -->
										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Create
												Account</button>
										</div>

										<!-- Login Link -->
										<div class="col-12">
											<p class="small mb-0">
												Already have an account? <a href="login">Log in</a>
											</p>
										</div>
									</form>

								</div>
							</div>


						</div>
					</div>
				</div>
			</section>
		</div>
	</main>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
