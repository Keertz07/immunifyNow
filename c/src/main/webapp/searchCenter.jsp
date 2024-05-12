<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
    <%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Centers </title>
<style>
table {
			margin-top:50px;
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
            color:Black;
            font-weight:bold;
             /* Optional: Add a background color to header cells */
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
<body style="background-color:lavender;">
<div class="navbar">
        <a style="text-decoration:none;color:white;font-weight:bold;margin-left:750px;" href="home.jsp">Home</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="searchcenter">Search Centers</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="booknow">Book</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="index">LogIn/SignUp</a>
        <!-- Add more navigation links as needed -->
    </div>
<h1 style="text-align:center">Book Your Centers Right Away!</h1>

<display:table name="${list1}" requestURI="/searchcenter" pagesize="10">
<display:column title="Sno" property="sno"></display:column>
<display:column title="Name" property="name"></display:column>
<display:column title="Mobile No" property="mobileno"></display:column>
<display:column title="slotno" property="slotno"></display:column>
<display:column title="city" property="city"></display:column>
<display:column title="pincode" property="pincode"></display:column>
</display:table>
<a href="home.jsp">
            <button style="height: 30px; background: grey; border: 1px solid darkgrey; border-radius: 3px; margin-top: 15px; margin-left: 600px; width: 100px;">Back</button>
        </a>
</body>
</html>