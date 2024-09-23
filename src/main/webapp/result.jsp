<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả tải lên tệp</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .message {
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            margin-top: 20px;
        }
        .image {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Kết quả tải lên tệp</h1>
    <div class="message">
        <p>${message}</p>
    </div>
    <a href="upload.jsp">Tải lên tệp khác</a>
</body>
</html>