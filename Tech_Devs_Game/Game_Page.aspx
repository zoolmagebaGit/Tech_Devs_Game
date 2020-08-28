<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game_Page.aspx.cs" Inherits="Tech_Devs_Game.Game_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Games Info</title>
     <!-- Animate.css -->
    <link rel="stylesheet" href="CSS/Style.css" />
    <link rel="stylesheet" href="CSS/style-freedom.css" />
    <link rel="stylesheet" href="CSS/animation.css" />
    <link rel="stylesheet" href="CSS/HeaderStyleSheet.css" />
    <!--Icon-->
    <link rel="shortcut icon" href="Image/favicon.png" />
    <!--Bootstrap CSS-->
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<!--Internal CSS-->
	<style>
body {font-family: Arial, Helvetica, sans-serif;}

#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Header */
h2 {
  text-align: center;
  text-transform: uppercase;
  color: #4CAF50;
}

p {
  text-indent: 50px;
  text-align: center;
  letter-spacing: 3px;
}


/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

/*Link decoration*/

a {
  text-decoration: none;
  color: #008CBA;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
</style>
<!--End Internal CSS-->
</head>
<body>
      <!-- header Tab -->
     <div class="header">
        <div class="header-top">
            <div class="container">
 
                    <div class="logo">
                        <h1><a href="Home.aspx">Tech <span>Devs</span></a></h1>
                    </div>
                    <div class="top-nav">
                        <ul>
                            <li ><a href="Home.aspx"><h3>Home </h3></a></li>
                            <li class="active"><a href="Game_Page.aspx"><h3>Games Info</h3></a></li>
                        </ul>
                        <!--script-->
                        <script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
                        </script>
                    </div>

                    <div class="clearfix"> </div>
               
            </div>
        </div>
    </div>
 <!-- header Menu -->

	
<h2>Ping Pong</h2>
	<img id="myImg" src="Image/ping pong.png" style="width:100%;max-width:300px"/>
<p>This particular game involves two players, the user who is playing against the computer.<br /> When the player fails to make the ball land on their block, the other player wins. .</p>
<p>There is a number representing the scores on each player’s side, which increments when they win.<br /> 
	The game is played using the mouse as well, by moving the mouse up and down depending on where you want to block the ball. 
	<br /><a  href="Ping_Pong.aspx">"Play ping pong"</a> link.</p>



<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01"/>
  <div id="caption"></div>
</div>
<br/>
<h2>Ring Stack</h2>
	<img id="myImg" src="Image/ring stack.png" alt="Snow" style="width:100%;max-width:300px" />
<p>The aim is to make the same neat stack (in ascending order) on the rod on the third row.<br /> You score a point when a neat stack has been made on a new rod,
the third rod in particular.</p>
	<p>The stack of rings includes a timer which will help you to see how long it took you to neatly stack the rings on the third rod and 
	the time stops when you have reached the goal.</p>
	<p>It also has an option to increase the number of rings you are given, making it more challenging.<br/> 
	The player uses the mouse to move the rings from one rod to the other. 
	<a  href="RingStack.aspx">"Play Ring Stack"</a> link.</p>

	<br/>
<h2>Trailer Box Balance</h2>
	<img id="myImg" src="Image/Trailer Box.png" alt="Snow" style="width:100%;max-width:300px" />
<p>The game has a small trailer with a box. The trailer is travelling in a very bumpy road, with hiccups along the road too.<br /> 
	The aim of this game is to ensure the player balances the box making sure it does not fall. As soon as the box falls,</p>
	<p>Tthe user is taken back to the start of the bumpy road. The player must use the left key on the mouse to move and balance the car.</p>
	<p><a  href="Trailer_Page/game.html">"Play Trailer Box Balance"</a> link.</p>


<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01"/>
  <div id="caption"></div>
</div>

<script>
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the image and insert it inside the modal - use its "alt" text as a caption
	var img = document.getElementById("myImg");
	var modalImg = document.getElementById("img01");
	var captionText = document.getElementById("caption");
	img.onclick = function () {
		modal.style.display = "block";
		modalImg.src = this.src;
		captionText.innerHTML = this.alt;
	}

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on <span> (x), close the modal
	span.onclick = function () {
		modal.style.display = "none";
	}
</script>
    <!--Footer-->
    
<section class="w3l-footer-22">
    <!-- footer-22 -->
    <div class="footer">
        <div class="wrapper">
            <div class="below-section">
                <div class="columns">
                    <p class="copy-right-hny">© 2020 Game Park | Design by
                        <a href="#"> Tech Devs.</a>
                    </p>
                </div>
            </div>
        </div>
    </div>


    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top" style="display: none;">
        <span class="fa fa-angle-up"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
</section>
</body>
</html>
