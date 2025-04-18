<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Agent | General Inquiries</title>
    <jsp:include page="AgentCss.jsp" />
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="AgentHeader.jsp" />
<jsp:include page="AgentSidebar.jsp" />

<main id="main" class="main">
    <div class="pagetitle">
        <h1>General Inquiries</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="AgentDashboard">Home</a></li>
                <li class="breadcrumb-item active">General Inquiries</li>
            </ol>
        </nav>
    </div>

    <section class="section dashboard">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Inquiry List</h5>
                <div class="table-responsive">
                    <table id="inquiriesTable" class="table table-bordered">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Contact</th>
                            <th>Type</th>
                            <th>Budget</th>
                            <th>Message</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="inquiry" items="${inquiries}">
                            <tr>
                                <td>${inquiry.id}</td>
                                <td>${inquiry.name}</td>
                                <td>${inquiry.contactInfo}</td>
                                <td>${inquiry.propertyType}</td>
                                <td>${inquiry.budget}</td>
                                <td>${inquiry.message}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="AgentFooter.jsp" />
<jsp:include page="AgentJs.jsp" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

<script>
    $(document).ready(function () {
        $('#inquiriesTable').DataTable({
            "pageLength": 5,
            "lengthMenu": [5, 10, 25, 50],
            "ordering": true,
            "searching": true
        });
    });
</script>
</body>
</html>
