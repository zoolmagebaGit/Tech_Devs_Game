<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tech_Devs_Game.Home" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Game Park</title>
     <!-- Animate.css -->
    <link rel="stylesheet" href="CSS/Style.css" />
    <link rel="stylesheet" href="CSS/style-freedom.css" />
    <link rel="stylesheet" href="CSS/animation.css" />
    <link rel="stylesheet" href="CSS/HeaderStyleSheet.css" />
    <!--Icon-->
    <link rel="shortcut icon" href="Image/favicon.png" />
    <!--Bootstrap CSS-->
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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
                            <li class="active"><a href="Home.aspx"><h3>Home </h3></a></li>
                            <li><a href="Game_Page.aspx"><h3>Game Info</h3></a></li>
                        </ul>
                        <!--script-->
                        <script>
                            $("span.menu").click(function () {
                                $(".top-nav ul").slideToggle(500, function () {
                                });
                            });
                        </script>
                    </div>

                    <div class="clearfix"> </div>
               
            </div>
        </div>
    </div>
 <!-- header Menu -->

 <!--Welocome Site-->
    <div class="banner">	
		<!-- Page title -->
			<h1> Welcome to our site</h1>
			<h2>Game Park</h2>	
            <div class="page-title-text wow fadeInUp">
            	<p class="page-title-text wow fadeInUp">Tech Devs game park Play online Games on our site for fun.</p>
            </div>
	</div>	
<!---728x90--->
<!--End Welcome Site-->

<!--Main Content-->
   <!--content-->
<div class="content">
	<div class="container">
		<!--content-top-->
		<div class="content-top">
			<div class="col-md-9 top-col">
				<div class="col-top">
					<div class="col-md-6 black">
						<a href="Ping_Pong.aspx"><img class="img-responsive" src="Image/ping pong.png" alt=""/>
                            <h4>Play Ping Pong</h4>
							<div class="col">
								<h4>Play Ping Pong</h4>	
							</div>
						</a>
					</div>
					<div class="col-md-6 black">
						<a href="RingStack.aspx"><img class="img-responsive" src="Image/ring snack.png" alt=""/>
                            <h4>Play Ring Stack</h4>
							<div class="col" >
								<h2 style="color:white">Play Ring Stack</h2>	
							</div>
						</a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
            <div class="col-md-3 per">
				<div class="six">					
				</div>
				<a href="Trailer_Balance/game.html"><img class="img-responsive" src="Image/Trailer Box.png" alt=""/>
				</a>
			</div>
            <h4><a href="Trailer_Page/game.html">Trailer Box Balance</a></h4>
			<div class="clearfix"> </div>

				<div class="col-top-bottom">
					<h3 class="menber">Game Info</h3>
					<a href="Game_Page.aspx" class="now-in">Game Information</a>
					<div class="clearfix"> </div>
				</div>
			</div>

		</div>		
    </div>
<!--content-->
       <!--content-->

<!--content-->

<!--End Main Content-->

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
