<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
    <%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Centers </title>
<style>

table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 2px solid black;
            border-radius:5px;
            padding: 8px;
            text-align: left;
            color:black;
            font-weight:bold;
            
        }

        th {
            background-color: #f2f2f2;
            color:black;
            font-weight:bold;
        }
        .navbar {
        	height:70px;
        	margin-top: -10px;
        	margin-right:-10px;	
            background-color: #333;
            overflow: hidden;
            width: 100%;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 24px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        
</style>
</head>
<body style="background-color:lavender">

	<div class="navbar">
        <a style="text-decoration:none;color:white;font-weight:bold;margin-left:1100px;" href="adminhome">Home</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="loginAdmin">Logout</a>
    </div>

<display:table name="${list}" requestURI="/viewcenter" pagesize="10">
<display:column title="Sno" property="sno"></display:column>
<display:column title="Name" property="name"></display:column>
<display:column title="Mobile No" property="mobileno"></display:column>
<display:column title="slotno" property="slotno"></display:column>
<display:column title="city" property="city"></display:column>
<display:column title="pincode" property="pincode"></display:column>
<display:column title="Edit" url="/update" paramId="id" paramProperty="id">Edit</display:column>
<display:column title="Delete" url="/delete" paramId="id" paramProperty="id">Delete</display:column>
</display:table>
</body>
</html>