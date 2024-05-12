<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <title> Admin Login </title>
    <style>
    	*{
    margin:0;
    padding:0;
    font-family:sans-serif;
}

.hero{
    height:100%;
    width:100%;
    background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(https://image.cnbcfm.com/api/v1/image/106797687-1605560680606-gettyimages-1229642237-AFP_8VB7RZ.jpeg?v=1608238234);
    background-position: center;
    background-size:cover;
	background-repeat:no-repeat;
    position:absolute;
}
.form-box{
    width:380px;
    height: 360px;
    position:relative;
    margin:7% auto;
    padding: 35px 5px 5px;
    border-radius:15px;
    overflow:hidden;
    background:lightcyan;
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
    top:180px;
    left:50px;
    position:absolute;
    width:280px;
    transition: .5s;
}
.input-field{
    width:100%;
    padding:10px 0;
    margin: 5px 0;
    border-left:0;
    border-top:0;
    border-right:0;
    border-bottom:1px solid black;
    outline:none;
    background: transparent;
    color:black;
}
.submit-btns{
    width:85%;
    padding:10px 30px;
    display:block;
    cursor :pointer;
    margin:auto;
    background:linear-gradient(to right,grey,grey);
    border:0;
    outline:none;
    border-radius:30px;

}
.span{
    color:#777;
    font-size:12px;
    bottom:68px;
    position:absolute;
}

h1 {
text-align: center; /* You can use 'left', 'center', 'right', or 'justify' */
}
    </style>
</head>
<body>
	
    <div class="hero">
    
        <div class="form-box">
        <h1>${message}</h1>
            <a style="text-align:center;margin-top:30px;"><h3>Login</h3></a>
            <div class="social-icons">
                <img src="https://clipart-library.com/new_gallery/410617_facebook-icon-transparent-png.jpg">
                <img src="https://news.topusainsights.com/wp-content/uploads/2023/07/twitter-x-logo.jpg">
                <img src="https://www.actiondatatel.com/wp-content/uploads/2022/07/Google-icon.jpg">
            </div>
            <form action="loginAdmin" method="post" id="loginss" class="input-group">
                <input type="text" class="input-field" name="email" placeholder="User-Id" required>
                <input type="text" class="input-field" name="password"  placeholder="Enter Password" required>
                <br>
                <br>
                <button type="submit" class="submit-btns">Log In</button>
            </form>
            
            
        </div>
        
    </div>
    

</body>
</html>