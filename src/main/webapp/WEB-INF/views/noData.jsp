<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>No Data</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <script>
        Swal.fire({
            icon: 'info',
            title: 'No Data Available',
            text: 'There is currently no data to display.',
            confirmButtonText: 'OK',
            allowOutsideClick: false
        }).then((result) => {
            if (result.isConfirmed) {
                window.history.back(); // or redirect to dashboard or other page
                // window.location.href = 'dashboard';
            }
        });
    </script>
</body>
</html>
