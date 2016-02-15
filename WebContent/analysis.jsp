<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
			src="webjars/jquery/2.1.1/jquery.min.js"></script>
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

<script type="text/javascript" src="webjars/d3pie/0.1.9/d3pie/d3pie.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Philips Application</title>
</head>
<body>
	<div class="starter-template"></div>
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

	</div>
	</nav>
	<div class="container">
		<div class=jumbotron>
			<h1>Analysis</h1>
			<p class="lead">The following bar chart displays the occurrence
				of different letters from the uploaded file. Each bar is a different
				character, and the length is proportional to to the number of times
				it has appeared</p>
		</div>
		<h1>Character Occurences</h1>
		<div class="chart"></div>
		<div id="pieChart"></div>


		<script>
		function makeContent(obj)
		{
			
		}
			var datatest = '${letters}';
			var data = JSON.parse(datatest);
            var content = new Array();
		    $.each(d3.keys(data), function(d,i){
				content.push({
					label: i,
					value: data.i
				})
					})
			var pie = new d3pie(
					"pieChart",
					{
						"header" : {
							"title" : {
								"text" : "Occurence of Characters in a File",
								"fontSize" : 24,
								"font" : "open sans"
							},
							"subtitle" : {
								"text" : "A full pie chart to show to illustrate the variance of characters in different files.",
								"color" : "#999999",
								"fontSize" : 12,
								"font" : "open sans"
							},
							"titleSubtitlePadding" : 9
						},
						"footer" : {
							"color" : "#999999",
							"fontSize" : 10,
							"font" : "open sans",
							"location" : "bottom-left"
						},
						"size" : {
							"canvasWidth" : 590,
							"pieInnerRadius" : "7%",
							"pieOuterRadius" : "95%"
						},
						"data" : {
							"sortOrder" : "value-desc",
							"content" : content
						},
						"labels" : {
							"outer" : {
								"pieDistance" : 32
							},
							"inner" : {
								"hideWhenLessThanPercentage" : 3
							},
							"mainLabel" : {
								"fontSize" : 11
							},
							"percentage" : {
								"color" : "#ffffff",
								"decimalPlaces" : 0
							},
							"value" : {
								"color" : "#adadad",
								"fontSize" : 11
							},
							"lines" : {
								"enabled" : true
							},
							"truncation" : {
								"enabled" : true
							}
						},
						"effects" : {
							"load" : {
								"speed" : 2000
							},
							"pullOutSegmentOnClick" : {
								"effect" : "linear",
								"speed" : 400,
								"size" : 8
							}
						},
						"misc" : {
							"gradient" : {
								"enabled" : true,
								"percentage" : 52
							}
						}
					});
		</script>
		<script>
			var newdata = d3.values(data)
			d3.select(".chart").selectAll("div").data(newdata).enter().append(
					"div").style("width", function(d) {
				return d * 10 + "px";
			}).data(d3.keys(data)).text(function(d) {
				return d;
			});
		</script>

		<script>
			</div>

			<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js">
		</script>
		
</body>
</html>