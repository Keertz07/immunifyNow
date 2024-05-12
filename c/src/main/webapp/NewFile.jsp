<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Automatic Image Slider</title>
  <style>
    #slider-container {
      width: 80%;
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
      height: 350px;
    }
  </style>
</head>
<body>

<div id="slider-container">
  <div id="slider">
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia4.png?sfvrsn=937d8af2_14" alt="Image 1"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/wiw2020-a2poster.png?sfvrsn=9be0697e_8" alt="Image 2"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia3-eng.png?sfvrsn=4937aff1_14" alt="Image 3"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia1.png?sfvrsn=d08772c4_14" alt="Image 3"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia6-nm-v03.png?sfvrsn=7e8d1278_14" alt="Image 3"></div>
    <div class="slide"><img src="https://cdn.who.int/media/images/default-source/world-immunization-week/wiw-2020/socialmedia5-nm-v03.png?sfvrsn=2177a77a_16" alt="Image 3"></div>
    <!-- Add more slides as needed -->
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
