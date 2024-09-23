<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Upload Demo</title>
</head>
<body>
	<div>Profile</div>
	<form method="post" action="/UpLoadFile/multiPartServlet"
		enctype="multipart/form-data">
		Upload image: <input type="file" name="image" /> 
		<br>
		<br />
		 Name:
        <br />
      <input type="text" name="name" />
       <br>
      Phone:
        <br>
      <input type="number" name="phone" size="100" />
        <br />
        <br />
        <input type="submit" value="Upload" />

	</form>

</body>


</html>