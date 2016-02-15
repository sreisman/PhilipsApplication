<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

<style>
body {
	padding-top: 65px;
}

.chart div {
	font: 10px sans-serif;
	background-color: steelblue;
	text-align: right;
	padding: 3px;
	margin: 1px;
	color: white;
}
</style>

<script src="//d3js.org/d3.v3.min.js" charset="utf-8"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="chart"></div>
	<!-- <script>
var data = [4, 8, 15, 16, 23, 42];

d3.select(".chart")
.selectAll("div")
  .data(data)
.enter().append("div")
  .style("width", function(d) { return d * 10 + "px"; })
  .text(function(d) { return d; });
</script> -->

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Philips Genomics Sample
				Application</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse"></div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="container">

		<div class="jumbotron">
			<h1>Text Analytic Service</h1>
			<p class="lead">Utilize this web application to run basic text
				analytics from short blurbs.</p>


		</div>
		<!-- /.container -->

		<h3>File Upload:</h3>
		Select a file to upload

		<form action="upload" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<input type="text" name="filename" /> 
				<input type="file" name="file" />
				<input type="submit" class="btn btn-default" />
			</div>
		</form>


		
	</div>


	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>