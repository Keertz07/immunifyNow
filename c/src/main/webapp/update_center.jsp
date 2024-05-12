<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>Update Employee</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: maroon;">
			<div>
				<a href="<%=request.getContextPath()%>/" class="navbar-brand"> Add Employee </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/employee-list"
					class="navbar-brand">Employee List</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				

				
					 <h2>Update Center</h2>
				
<form:form action="update-center" method="post"  modelAttribute="centerBo">
	<input type='hidden' name='id' id='id'  value="${centerBo.id}"/> 
							<div class="form-group">
								<label>Center Name<font color="red"> *</font></label> <input
									class="form-control" required="required" name="name" value="${centerBo.name}" type="text"></div>
							
							<div class="form-group">
								<label> Phone Number<font color="red"> *</font></label> <input
									class="form-control" required="required" name="mobileno" value="${centerBo.mobileno}" type="text"></div>
								
							<div class="form-group">
								<label>Slots<font color="red"> *</font></label> <input
									class="form-control" required="required" name="slotno" value="${centerBo.slotno}" type="text"></div>
									
								
									<div class="form-group">
								<label>City<font color="red"> *</font></label> <input
									class="form-control" required="required" name="city" value="${centerBo.city}" type="text"></div>
								
									<div class="form-group">
								<label>Pincode<font color="red"> *</font></label> <input
									class="form-control" required="required" name="pincode" value="${centerBo.pincode}" type="text"></div>
							<center><button  type="submit" class="btn btn-success">Update</button></center>
							
						</form:form>
			
			</div>
		</div>
	</div>
</body>
</html>