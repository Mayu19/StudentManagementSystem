<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
background-color:blueviolet;
}

form{
background-color: #f5f5dc;
}


a{
text-decoration: none;
}
a:visited
{
color:black;
}
a:hover {
	color:red;
}
a:active {
	color:orange;
}

a{
font-size:20px;
font-style:inherit;
font-weight: bold;
}

</style>
<meta charset="ISO-8859-1">
<title>Registration page</title>
</head>
<body>
<% String s=(String)request.getAttribute("warning");
	if(s!=null)
	{
		out.print(s);
	}
%>
<h1 style="color: cornsilk;">Registration Form</h1>

	<form action="reg">


		<fieldset>
			<legend style="color:red;">Detail Information :-</legend>
		
			<br>
			<div>
				Student ID: <input type="number" placeholder="Enter ID" name="id"
					required>
			</div>
			<br>
			<br>
			<div>
				&nbsp;&nbsp;&nbsp;User Name: <input type="text"
					placeholder="Enter Username" name="username" required>
			</div>
			<br>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password : <input type="password"
					placeholder="Enter Password" name="password" required>
			</div>
			<br>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Name: <input type="text" placeholder="Enter  name" name="name"
					required>
			</div>
			<br>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Age: <input type="number" placeholder="Enter age" name="age"
					required>
			</div>
			<br>
			<div>
				&nbsp;&nbsp;&nbsp; Mobile No.: <input type="text"
					name="country code" value="+91" size="2" />
					 <input type="text"name="mobileno" size="10" placeholder="Enter 10 digit"/>
			</div>
			<br>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:
				<textarea row="20" cols="50" placeholder="Enter your address"
					name="address"></textarea>
			</div>
			<br>

			<div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="submit" value="SignUp">
			</div>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have an account?<a
				href="login.jsp" value="LogIn here">LogIn here</a>

		</fieldset>
	</form>
</body>
</html>