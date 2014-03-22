<%-- 
    Document   : home
    Created on : 21-mrt-2014, 17:13:04
    Author     : Jeroen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>MyVibe Music Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="css/home.css" rel="stylesheet" media="screen">
  </head>
  <body>
	<div class="container">
		<div class="row">
			<div class="span8">
				<h1>MyVibe</h1>
			</div>
			<div class="span4">
				<h4>Welkom ${currentSessionUser.firstName}</h4>
				<a href="inlog.html" target="_parent"><button class="btn btn-danger">Log uit</button></a>
			</div>
		</div>
		
		<div class="row" id="menu">
			<nav role="navigation" class="navbar navbar-default">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="playlist.html">Mijn afspeellijst</a></li>
					<li><a href="download.html">Koop een nummer</a></li>
					<li><a href="upload.html">Upload een nummer</a></li>
				</ul>
			</nav>
			<div class="input-append">
				<input class="span2" id="appendedInputButtons" type="text">
				<button class="btn" type="button">Search</button>
			</div>
		</div>
			
		<div class="row" id="content">
			<div class="span4">
				<h5><i class="icon-music"></i> Mijn aangekochte nummers</h5>
				<ul>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
				</ul>
				<a href="#">Bekijk mijn afspeellijst</a>
			</div>
			<div class="span4">
				<h5><i class="icon-heart"></i> Meest aangekochte nummers</h5>
				<ul>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
				</ul>
				<a href="#">Ga naar de muziekstore</a>
			</div>
			<div class="span4">
				<h5><i class="icon-star"></i> Recent upgeloade nummers</h5>
				<ul>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
					<li>Artiest - Titel</li>
				</ul>
				<a href="#">Ga naar de muziekstore</a>
			</div>
		</div>
	</div>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>