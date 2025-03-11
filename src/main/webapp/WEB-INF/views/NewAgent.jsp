<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agent Registration</title>

    <!-- Bootstrap CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <main>
        <div class="container">
            <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5 col-md-6 d-flex flex-column align-items-center justify-content-center">

                            <!-- Display Success Message -->
                            <% 
                                String successMessage = (String) session.getAttribute("successMessage");
                                if (successMessage != null) { 
                            %>
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <%= successMessage %>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            <%
                                session.removeAttribute("successMessage"); // Clear message after displaying
                                } 
                            %>

                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">Agent Registration</h5>
                                        <p class="text-center small">Enter agent details to register</p>
                                    </div>

                                    <form class="row g-3 needs-validation" action="saveagent" method="post" novalidate>
                                        <!-- License Number -->
                                        <div class="col-12">
                                            <label class="form-label">License Number</label>
                                            <input type="text" class="form-control" name="licenseNo" pattern="^[A-Za-z0-9-]+$" required>
                                            <div class="invalid-feedback">Please enter a valid license number (letters, numbers, and dashes only).</div>
                                        </div>

                                        <!-- Agency Name -->
                                        <div class="col-12">
                                            <label class="form-label">Agency Name</label>
                                            <input type="text" class="form-control" name="agencyName" pattern="^[A-Za-z\s]+$" required>
                                            <div class="invalid-feedback">Agency name should only contain letters and spaces.</div>
                                        </div>

                                        <!-- Experience (Years) -->
                                        <div class="col-12">
                                            <label class="form-label">Experience (Years)</label>
                                            <input type="number" class="form-control" name="experienceYears" min="0" max="50" required>
                                            <div class="invalid-feedback">Please enter valid years of experience (0-50).</div>
                                        </div>

                                        <!-- Rating -->
                                        <div class="col-12">
                                            <label class="form-label">Rating (Optional)</label>
                                            <input type="number" step="0.1" class="form-control" name="rating" min="1" max="5" placeholder="1.0 - 5.0">
                                            <div class="invalid-feedback">Enter a rating between 1.0 and 5.0.</div>
                                        </div>

                                        <!-- Address -->
                                        <div class="col-12">
                                            <label class="form-label">Address</label>
                                            <textarea class="form-control" name="address" rows="3" required></textarea>
                                            <div class="invalid-feedback">Please enter an address!</div>
                                        </div>

                                        <!-- Submit Button -->
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100" type="submit">Register</button>
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

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- JavaScript Validation -->
    <script>
        (function () {
            'use strict';
            var forms = document.querySelectorAll('.needs-validation');
            Array.prototype.slice.call(forms).forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>

    <!-- Bootstrap JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>
