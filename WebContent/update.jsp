<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
caption {
	border: 5px solid orange;
	color: maroon;
	font-weight: bold;
}
table {
	border: 5px solid orange;
}
</style>
<meta charset="ISO-8859-1">
<title>update page</title>
</head>
<body>
<h2 align="center">Update Data</h2>
<form action="update">

<input type="hidden" name="id" value=${s.id}> 
<table border="1" align="center">
		
		<caption>Update Data</caption>
		<tr>
		
			<th>Username</th>
			<th>Password</th>
			<th>Name</th>
			<th>Age</th>
			<th>Mobileno</th>
			<th>Address</th>
		</tr>
			<tr>
			<td><input type="text" name="username" value=${s.username}></td>
			<td><input type="text" name="password" value=${s.password}></td>
			<td><input type="text" name="name" value=${s.name}></td>
			<td><input type="text" name="age" value=${s.age}></td>
			<td><input type="text" name="mobileno" value=${s.mobileno}></td>
			<td><input type="text" name="address" value=${s.address}></td>
			</tr>
			<tr>
			<td><input type="submit" value="Update"></td>
			
			</tr>
</table>

</form>
</body>
</html>