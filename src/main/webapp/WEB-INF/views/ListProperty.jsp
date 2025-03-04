<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        h2 {
            font-weight: bold;
            color: #343a40;
        }
        table {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Property List</h2>
        <div class="table-responsive">
            <table id="propertyTable" class="table table-bordered table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Zip Code</th>
                        <th>Description</th>
                        <th>Base Price</th>
                        <th>Other Price Details</th>
                        <th>Bedrooms</th>
                        <th>Bathrooms</th>
                        <th>Furnishing</th>
                        <th>Year Built</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${propertyList}" var="property">
                        <tr>
                            <td>${property.propertyId}</td>
                            <td>${property.propertyName}</td>
                            <td>${property.address}</td>
                            <td>${property.zipcode}</td>
                            <td>${property.description}</td>
                            <td>${property.basePrice}</td>
                            <td>${property.otherPriceDescription}</td>
                            <td>${property.bedrooms}</td>
                            <td>${property.bathrooms}</td>
                            <td>${property.furnishingStatus}</td>
                            <td>${property.yearBuilt}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#propertyTable').DataTable({
                "paging": true,
                "lengthMenu": [5, 10, 25, 50],
                "pageLength": 5,
                "ordering": true
            });
        });
    </script>
</body>
</html>