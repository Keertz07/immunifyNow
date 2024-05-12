<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=" ISO-8859-1 ">
    <title>ADMIN</title>
    <style>
        body {
            background-image: url('https://www.unomaha.edu/news/2021/02/img/20200128_covid_testing_01.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

        h1 {
            text-align: center;
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

        .row {
            margin-top: 50px;
            margin-left: 410px;
            display: flex;
            width: 500px;
            height: 80px;
        }

        .column {
            flex: 1;
            margin-right: 20px;
            box-sizing: border-box;
            border: 2px solid black;
            border-radius: 10px;
            background: darkgray;
            padding-top:10px;
            padding-bottom:15px;
            padding-left:45px;
        }
    </style>
</head>

<body>
<div class="navbar">
        <a style="text-decoration:none;color:white;font-weight:bold;margin-left:1100px;" href="adminhome">Home</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="loginAdmin">Logout</a>
    </div>
<br>
    <h1 style="color:black; text-align:center;">Welcome Admin!</h1>

    
	<br>
    <h1 style="color:white;">${message}</h1>
    <div column="div">
        <div class="row">
            <div class="column">
                <a style="text-decoration:none;color:White;" href="addcenter">
                    <h3>Add A Center</h3>
                </a>
            </div>
            <div class="column">
                <a style="text-decoration:none;color:White;" href="viewcenter">
                    <h3>Delete A Center</h3>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <a style="text-decoration:none;color:White;" href="viewcenter">
                    <h3>Edit Center</h3>
                </a>
            </div>
            <div class="column">
                <a style="text-decoration:none;color:White;" href="viewcenter">
                    <h3>View a Center</h3>
                </a>
            </div>
        </div>
    </div>
</body>

</html>
