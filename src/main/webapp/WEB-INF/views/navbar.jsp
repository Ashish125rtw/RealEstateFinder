<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="homepage">Real Estate Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="homepage">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="homepage#about">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="homepage#contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="/ListProperty">Properties</a></li>
                <li class="nav-item"><a class="nav-link" href="ListAgent">Agents</a></li>

                <%-- Show Logout if User is Logged In, Otherwise Show Login/Signup --%>
                <% if (session.getAttribute("user") != null) { %>
                    <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                <% } else { %>
                    <li class="nav-item"><a class="nav-link" href="signup">Sign Up / Login</a></li>
                <% } %>
            </ul>
        </div>
    </div>
</nav>
