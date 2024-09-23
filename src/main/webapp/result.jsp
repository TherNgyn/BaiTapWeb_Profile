<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
        }
        h1 {
            color: #333;
        }
        .info {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .info p {
            margin: 10px 0;
        }
        .image {
            margin-top: 20px;
            text-align: center;
        }
        .image img {
            max-width: 100%;
            height: auto;
            border: 1px solid #ccc;
            padding: 5px;
            background-color: #fff;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Thông tin</h1>
    <div class="info">
        <p><strong>Tên:</strong> ${name}</p>
        <p><strong>Số điện thoại:</strong> ${phone}</p>
    </div>
    <div class="image">
        <c:if test="${not empty image}">
            <img src="${image}" alt="Uploaded Image">
        </c:if>
    </div>
    <a class="back-link" href="upload.jsp">Tải lên tệp khác</a>
</body>
</html>