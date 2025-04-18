<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>My Property Listings</title>
    <jsp:include page="SellerCss.jsp"/>
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
</head>
<body>

<jsp:include page="SellerHeader.jsp"/>
<jsp:include page="SellerSidebar.jsp"/>

<main id="main" class="main">
    <div class="pagetitle">
        <h1>My Property Listings</h1>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body">
                <table class="table table-striped" id="propertiesTable">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${myProperties}" var="prop">
                            <tr>
                                <td>${prop.propertyId}</td>
                                <td>${prop.propertyName}</td>
                                <td>${prop.basePrice}</td>
                                <td>${prop.status}</td>
                                <td>
                                    <a href="editProperty?pid=${prop.propertyId}" class="btn btn-sm btn-primary">Edit</a>
                                    <a href="deleteProperty?pid=${prop.propertyId}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this property?');">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</main>

<jsp:include page="SellerFooter.jsp"/>
<jsp:include page="SellerJs.jsp"/>

<!-- DataTable Scripts -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#propertiesTable').DataTable();
    });
</script>

</body>
</html>
