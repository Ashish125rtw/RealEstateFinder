<header id="header" class="header fixed-top d-flex align-items-center">
	<div class="d-flex align-items-center justify-content-between">
		<a href="index.html" class="logo d-flex align-items-center"> <img
			src="assets/img/logo_new.png" alt=""> <span
			class="d-none d-lg-block">Agent - Dashboard</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">
			<li class="nav-item dropdown pe-3"><a
				class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
				data-bs-toggle="dropdown"> <img src="${user.profilePicPath}"
					alt="Profile" class="rounded-circle"
					style="width: 40px; height: 40px; object-fit: cover;"> <span
					class="d-none d-md-block dropdown-toggle ps-2">Hi,
						${user.firstName}</span>
			</a>

				<ul
					class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
					<li class="dropdown-header">
						<h6>${user.firstName}&nbsp;${user.lastName}</h6> <span>${user.role}</span>
					</li>

					<li><hr class="dropdown-divider"></li>

					<li class="dropdown-item d-flex align-items-center btn btn-primary"
						style="cursor: pointer;" onclick="loadProfile()"><i
						class="bi bi-person"></i> <span>View Profile</span></li>


					<li><a class="dropdown-item d-flex align-items-center"
						href="editProfile"> <i class="bi bi-pencil-square"></i> <span>Edit
								Profile</span>
					</a></li>



					<li><hr class="dropdown-divider"></li>

					<!-- Sign Out -->
					<li><a class="dropdown-item d-flex align-items-center"
						href="logout"> <i class="bi bi-box-arrow-right"></i> <span>Sign
								Out</span>
					</a></li>
				</ul></li>
		</ul>
	</nav>
</header>
<!-- Bootstrap Modal (put at the bottom of the page) -->
<div class="modal fade" id="profileModal" tabindex="-1"
	aria-labelledby="profileModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">User Profile</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body" id="profileContent">Loading...</div>
		</div>
	</div>
</div>

<!-- Script to load profile content -->
<script>
  function loadProfile() {
    fetch("/view-profile-data")
      .then(response => response.text())
      .then(html => {
        document.getElementById("profileContent").innerHTML = html;
        new bootstrap.Modal(document.getElementById("profileModal")).show();
      })
      .catch(err => {
        document.getElementById("profileContent").innerHTML = "Error loading profile.";
        console.error(err);
      });
  }
</script>

