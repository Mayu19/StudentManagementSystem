<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
background-color: darkseagreen;
}

form{
background-color: cornsilk;
}


a{
text-decoration: none;
}

a:visited
{
color: #000000;
}
a:hover {
	color:red;
}
a:active {
	color:orange;
}
a{
font-size:18px;
font-style:inherit;
font-weight: bold;
}
</style>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h1 style="color:maroon;">Log In Here</h1>
<form action="log">

<fieldset >
<legend id="leg">Sign In Here :-</legend>
<div>
Username :
<input type="text" name="username" placeholder="Enter Username" name="username" required>
</div>
<br>
<div>
&nbsp;Password :
<input type="text" name="password" placeholder="Enter Password" name="password" required>
</div>
<br>
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="login">
</div>

<% String s=(String)request.getAttribute("warning");
	if(s!=null)
	{
		out.print(s);
	}
%>
<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You don't have an account?<a
				href="register" value="Register here">Register here</a>
</fieldset>

</form>
</body>
</html>