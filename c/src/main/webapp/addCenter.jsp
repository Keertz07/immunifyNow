<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <title>Center</title>
    <style>
    	*{
    margin:0;
    padding:0;
    font-family:sans-serif;
}

.hero{
    height:100%;
    width:100%;
    background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(https://www.gannett-cdn.com/presto/2021/01/06/PPEN/ab0c9609-2e6f-40b5-a0fb-a2861f923cbb-DeSantis_vaccines_presser-11.jpg?crop=2999,1687,x0,y0&width=2999&height=1687&format=pjpg&auto=webp);
    background-position: center;
    background-size:cover;
	background-repeat:no-repeat;
    position:absolute;
}
.form-box {
    width: 380px;
    height: 410px;
    position: relative;
    margin: 6% auto;
    padding: 20px 5px 5px; /* Adjusted padding-top to 25px */
    border-radius: 15px;
    border: 2px solid white;
    overflow: hidden;
    background: transparent;
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



.button-boxes{
    width:220px;
    margin:35px auto;
    position:relative;
    box-shadow: 0 0 20px 9px #ff61241f;
    border-radius:30px;
}
.toggle-btn{
    padding:10px 30px;
    cursor:pointer;
    background:transparent;
    border:0;
    outline:none;
    position:relative;
    color:black;

}

#btns{
    top:0;
    left:0;
    position:absolute;
    width:110px;
    height: 100%;
    background:linear-gradient(to right,grey,grey);
    border-radius:30px;
    transition:.5s;

}
.social-icons{
    margin:30px auto;
    text-align:center;
}
.social-icons img{
    width:30px;
    margin:0 12px;
    box-shadow:0 0 20px 0 #7f7f7f3d;
    cursor:pointer;
    border-radius:50%;
}
.input-group{
    top:100px;
    left:47px;
    position:absolute;
    width:280px;
    transition: .5s;
}
.input-field {
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border-left: 0;
    border-top: 0;
    border-right: 0;
    border-bottom: 1px solid white;
    outline: none;
    background: transparent;
    color: black; /* Add this line to set the text color to black */
}
.input-field input {
    color: white;
    font-weight:bold;
}
.input-field::placeholder {
    color: White;
    font-weight: bold;
}
 
.submit-btns{
    width:85%;
    padding:10px 30px;
    display:block;
    cursor :pointer;
    margin:auto;
    background:linear-gradient(to right,grey,grey);
    border:0;
    color:white;
    font-weight:bold;
    outline:none;
    border-radius:30px;

}
.check-box{
    margin:30px 10px 30px 0;

}

.span{
    color:#777;
    font-size:12px;
    bottom:68px;
    position:absolute;
}
#loginss{
    left:50px;
}
#registerss{
    left:450px;
}
h1 {
text-align: center; 
}
</style>
</head>
<body>
<div class="navbar">
        <a style="text-decoration:none;color:white;font-weight:bold;margin-left:1000px;" href="index">Home</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="loginAdmin">Logout</a>
        <!-- Add more navigation links as needed -->
    </div>

	
    <div class="hero">
    
        <div class="form-box">
        <h1>${message}</h1>
            <a style="text-align: center; margin-top: 20px; color: white; font-weight: bold; font-family: sans-serif;">
    			<h1>Add a center</h1>
    			
			</a>

       	<form:form action="addcenter" method="post" modelAttribute="centerbo" class="input-group">
    <form:input type="text" path="name" class="input-field" name="name" placeholder="Name Of Center" required="required"></form:input>
                <form:input type="text" path="mobileno" class="input-field" name="mobileno" placeholder="Contact Number" required="required"></form:input>
                <form:input type="text" path="slotno" class="input-field" name="slotno" placeholder="No of Slots" required="required"></form:input>
                <form:input type="text" path="city" class="input-field" name="city" placeholder="City" required="required"></form:input>
                <form:input type="text" path="pincode" class="input-field" name="pincode" placeholder="Pin-Code" required ="required"></form:input>
                <br>
                <br>
                <br>
                <form:hidden path="id"/>
                <form:button type="submit" class="submit-btns">Add</form:button>
         </form:form>
        </div>
        
    </div>
    

</body>
</html>