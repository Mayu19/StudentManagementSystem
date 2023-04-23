<%@page import="com.mvc.model.Student" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
caption {
	border: 5px solid darkseagreen;
	color: maroon;
	font-weight: bold;
}
table {
	border: 5px solid darkseagreen;
}

</style>


<script type="text/javascript">
function deleteData()
{
	alert("Delete");
	document.myform.action="delete";
	document.myform.submit();
	}
	
function updateData()
{
	alert("Update");
	document.myform.action="edit";
	document.myform.submit();
	}
	
function addRecord()
{
	alert("Add");
	document.myform.action="add";
	document.myform.submit();
	
	}

</script>
<title>Success page</title>
</head>
<body>
<h1 align="center">Student Data</h1>
<form name="myform">
	<table border="1" align="center">
		
		<caption>Student Data</caption>
		<tr>
			<th>Id</th>
			<th>Username</th>
			<th>Password</th>
			<th>Name</th>
			<th>Age</th>
			<th>Mobileno</th>
			<th>Address</th>
		</tr>
		
<%List<Student> slist=(List)request.getAttribute("data");
	for(Student s:slist)
{%>
			<tr>
			
				<td><input type="radio" name="id" value="<%=s.getId() %>"> <%=s.getId() %></td>
				<td><%=s.getUsername() %> </td>
				<td><%=s.getPassword() %> </td>
				<td><%=s.getName() %></td>
				<td><%=s.getAge() %></td>
				<td><%=s.getMobileno() %></td>
				<td><%=s.getAddress() %></td>
				
			
			</tr>
			<%} %>
		<tr>
		<td><input type="button" onclick="deleteData()" value="Delete"></td>
		<td><input type="button" onclick="updateData()" value="Update"></td>
		<td><input type="button" value="Add" onclick="addRecord()"></td>
		
		</tr>
		</table>
		</form>
</body>
