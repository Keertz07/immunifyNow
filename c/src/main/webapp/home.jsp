<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset="ISO-8859-1">
<title>USER</title>
<style>
	#slider-container {
      width: 90%;
      margin: auto;
      overflow: hidden;
    }
    
    #slider {
      display: flex;
      transition: transform 0.5s ease-in-out;
    }

    .slide {
	      width: 100%;
	      flex: 0 0 auto;
    }

    img {
   		margin-left:125px;
        width: 80%;
        height: 450px;
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
</style>
</head>
<body style="background-color:lavender;">
<div class="navbar">
        <a style="text-decoration:none;color:white;font-weight:bold;margin-left:750px;" href="home.jsp">Home</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="searchcenter">Search Centers</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="booknow">Book</a>
        <a style="text-decoration:none;color:white;font-weight:bold;" href="login">LogIn/SignUp</a>
        <!-- Add more navigation links as needed -->
    </div>

<h1 style="color:grey; text-align:center;">Welcome to Home Page</h1>
<div id="slider-container">
  <div id="slider">
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia4.png?sfvrsn=937d8af2_14" alt="Image 1"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/wiw2020-a2poster.png?sfvrsn=9be0697e_8" alt="Image 2"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia3-eng.png?sfvrsn=4937aff1_14" alt="Image 3"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia1.png?sfvrsn=d08772c4_14" alt="Image 3"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia6-nm-v03.png?sfvrsn=7e8d1278_14" alt="Image 3"></div>
	<div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia5-nm-v03.png?sfvrsn=2177a77a_16" alt="Image 3"></div>
  </div>
</div>

<div style=" height: 300px; width: 1100px; margin-top: 100px; margin-left: 75px; display: flex;">
    <div>
        <img style="height: 280px; width: 400px; margin-top: 10px; margin-left: 10px;border-radius:30px" src="https://www.remedieslabs.com/blog/wp-content/uploads/2022/03/Covid-19-Vaccination-and-Its-Benefits-1-1536x865.jpg">
    </div>
    <div style="padding: 20px;">
        <h1>~Benefits~</h3>
        <p style="margin-top: 10px; "><strong>Prevents Serious illness</strong>: COVID-19 vaccines available in the United States are safe and effective at protecting people from getting seriously ill, being hospitalized, and dying.</p>
        <p style="margin-top: 15px; "><strong>A safer way to build Protection</strong>:Getting a COVID-19 vaccine is a safer, more reliable way to build protection than getting sick with COVID-19.</p>
        <p style="margin-top: 15px; "><strong>Offers Added Protection</strong>:COVID-19 vaccines can offer added protection to people who had COVID-19, including protection against being hospitalized from a new infection.</p>
    </div>

</div>
<div style=" height: 300px; width: 1100px; margin-top: 100px; margin-left: 75px; display: flex;">
    
    <div style="padding: 40px;">
        <h1>Search Vaccination Centers Near You</h1></h3>
        <p style="margin-top: 15px;">Get a preview list of the nearest centers and check availability of vaccination slots</p>
        <a href="searchcenter">
            <button style="height: 30px; background: grey; border: 1px solid darkgrey; border-radius: 3px; margin-top: 15px; margin-left: 200px; width: 100px;">Search</button>
        </a>
    </div>
    <div>
        <img style="height: 280px; width: 400px; margin-top: 10px; margin-left: 10px;border-radius:30px" src="https://static01.nyt.com/images/2021/03/09/us/09virus-vaccine-rules/09virus-vaccine-rules-superJumbo.jpg?quality=90&auto=webp">
    </div>

</div>
<h1 style="margin-top:50px;"> Steps to Get Vaccinated</h1>

<div style="height: 300px; width: 1100px; margin-top: 50px; margin-left: 75px; border-radius: 10px; display: flex;">

    <div style="position: relative;">
       <a href="book.jsp"><button  style="position: absolute; top: 40px; left: 50%; transform: translateX(-50%); height: 35px;width:60px; background:lightblue; border: 1px solid darkgrey; border-radius: 3px; margin-top: -55px;">Step 1</button></a>
        <img style="height: 250px; width: 300px; margin-bottom: 10px; margin-left: 30px; border-radius: 30px;" src="https://www.digidhivya.com/wp-content/uploads/2021/07/Blue-and-Turquoise-Rounded-and-Organic-Expert-Tip-Healthcare-Static-Non-QR-Code-UPshow-Announcement.jpg">
    </div>

    <div style="position: relative;">
        <button style="position: absolute; top: -20px; left: 55%; transform: translateX(-50%); height: 35px; width:60px; background: lightblue; border: 1px solid darkgrey; border-radius: 3px; margin-top: 5px;">Step 2</button>
        <img style="height: 250px; width: 300px; margin-bottom: 10px; margin-left: 50px; border-radius: 30px;" src="https://images.creativemarket.com/0.1.0/ps/10200739/1100/732/m1/fpnw/wm0/preview-.jpg?1618390059&s=999dc633bfe20a33b05def910ba4d965">
    </div>

    <div style="position: relative;">
        <button style="position: absolute; top: -20px; left: 55%; transform: translateX(-50%); height: 35px; width:60px; background: lightblue; border: 1px solid darkgrey; border-radius: 3px; margin-top: 5px;">Step 3</button>
        <img style="height: 250px; width: 300px; margin-bottom: 10px; margin-left: 50px; border-radius: 30px;" src="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/Q5BEPTB73QI6XNMLCYR7MJTZMA.jpg&w=1440">
    </div>

</div>

<script>
  const slider = document.getElementById('slider');
  let slideIndex = 0;

  function showSlide(index) {
    // Calculate the new position for the slider
    const newPosition = -index * 100 + '%';
    
    // Apply the transform style to move the slider
    slider.style.transform = 'translateX(' + newPosition + ')';
  }

  function nextSlide() {
    // Increment the slide index and show the next slide
    slideIndex = (slideIndex + 1) % slider.children.length;
    showSlide(slideIndex);
  }

  // Automatically move to the next slide every 3 seconds
  setInterval(nextSlide, 3000);
</script>

</body>
</html>
