<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Edit Profile</h4>
        </div>
        <div class="card-body">
            <form action="/editProfile" method="post">
                <div class="mb-3">
                    <label for="firstName" class="form-label">First Name</label>
                    <input type="text" id="firstName" name="firstName" class="form-control" value="${user.firstName}" required>
                </div>

                <div class="mb-3">
                    <label for="lastName" class="form-label">Last Name</label>
                    <input type="text" id="lastName" name="lastName" class="form-control" value="${user.lastName}" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="text" id="phone" name="phone" class="form-control" value="${user.contactNum}" required>
                </div>

                <div class="d-flex justify-content-end">
                    <button type="button" class="btn btn-secondary me-2" onclick="goBack()">Cancel</button>
                    <button type="submit" class="btn btn-success">Update Profile</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Hidden input to hold the fallback URL -->
<c:if test="${not empty sessionScope.previousPage}">
    <input type="hidden" id="fallbackUrl" value="${sessionScope.previousPage}" />
</c:if>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
  function goBack() {
    const referrer = document.referrer;
    const fallback = document.getElementById("fallbackUrl")?.value;

    if (referrer) {
      window.location.href = referrer;
    } else if (fallback) {
      window.location.href = fallback;
    } else {
      window.location.href = "/defaultDashboard";
    }
  }
</script>

</body>
</html>
