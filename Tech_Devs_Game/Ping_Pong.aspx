<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ping_Pong.aspx.cs" Inherits="Tech_Devs_Game.Ping_Pong" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Animate.css -->
    <link rel="stylesheet" href="CSS/Style.css" type="text/css"/>
    <link rel="stylesheet" href="CSS/style-freedom.css" type="text/css"/>
    <link rel="stylesheet" href="CSS/animation.css" type="text/css"/>
    <link rel="stylesheet" href="CSS/HeaderStyleSheet.css" type="text/css"/>
    <link rel="stylesheet" href="CSS/pingpong_css/gravitybackground.css" type="text/css" />
    <!--Icon-->
    <link rel="shortcut icon" href="Image/favicon.png" />
    <!--Bootstrap CSS-->
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <title>Ping Pong</title>
</head>
<body>

<!-- End header Menu -->
   <div id="gradient"></div>
    <canvas id="pong" width="920" height="580"></canvas> 
    
        <!-- header -->
<div class="w3l-headers-9">
  <header>
    <div class="wrapper-2">
      <div class="header">
        <div class="overlay-menuv-hny banner-menu">
          <input type="checkbox" id="op"/>
          <div class="side-menu-hny">
            <label for="op" class="menuopen">
              <img src="Image/menu3.png" alt="logo" class="img-responsive banner-menu"/></label>
          </div>
          <div class="overlay-menuv overlay-menuv-hugeinc">
            <label for="op" class="menuclose"></label>
            <nav class="menu-side-over-left">
              <ul class="over-cn-vv">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Game_Page.aspx">Games Info</a></li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- //overlay-menuv-menu -->
      </div>
    </div>
  </header>
  <!-- //header -->
  <script>
      $('#op').change(function () {
          if ($('#op').is(":checked")) {
              $('body').css('overflow', 'hidden');
          } else {
              $('body').css('overflow', 'auto');
          }
      });
  </script>
</div>
    <!--Game JavaScript-->
<script type="text/javascript" src="Java_Script/ping_pong/pong.js"></script>
</body>
</html>