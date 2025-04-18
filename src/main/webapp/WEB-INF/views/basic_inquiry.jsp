<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact an Agent</title>
    <jsp:include page="BuyerCss.jsp" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>

<jsp:include page="BuyerHeader.jsp" />
<jsp:include page="BuyerSidebar.jsp" />

<main id="main" class="main">
    <div class="pagetitle">
        <h1>Contact an Agent</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="buyerdashboard">Home</a></li>
                <li class="breadcrumb-item active">General Inquiry</li>
            </ol>
        </nav>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body pt-4">

                <c:if test="${not empty successMessage}">
                    <div class="alert alert-success">${successMessage}</div>
                </c:if>

                <form action="${pageContext.request.contextPath}/submit-inquiry" method="post">
                    <div class="form-group mb-3">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control" required />
                    </div>

                    <div class="form-group mb-3">
                        <label>Contact Info (Email or Phone)</label>
                        <input type="text" name="contactInfo" class="form-control" required />
                    </div>

                    <div class="form-group mb-3">
                        <label>Property Type</label>
                        <select name="propertyType" class="form-control" required>
                            <option value="">Select Type</option>
                            <option value="Apartment">Apartment</option>
                            <option value="Villa">Villa</option>
                            <option value="Plot">Plot</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label>Budget</label>
                        <input type="text" name="budget" class="form-control" required />
                    </div>

                    <div class="form-group mb-3">
                        <label>Message</label>
                        <textarea name="message" class="form-control" rows="4" required></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Send Inquiry</button>
                </form>
            </div>
        </div>
    </section>
</main>

<jsp:include page="BuyerFooter.jsp" />
<jsp:include page="BuyerJs.jsp" />

</body>
</html>
