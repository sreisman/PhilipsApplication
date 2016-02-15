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
			<p class="lead">The following bar chart displays the occurrence of different
				letters from the uploaded file. Each bar is a different character,
				and the length is proportional to to the number of times it has
				appeared</p>
		</div>
		<h1>Character Occurences</h1>
		<div class="chart"></div>
		
		
		<script>
var pie = new d3pie("pieChart", {
	"header": {
		"title": {
			"text": "Occurence of Characters in a File",
			"fontSize": 24,
			"font": "open sans"
		},
		"subtitle": {
			"text": "A full pie chart to show to illustrate the variance of characters in different files.",
			"color": "#999999",
			"fontSize": 12,
			"font": "open sans"
		},
		"titleSubtitlePadding": 9
	},
	"footer": {
		"color": "#999999",
		"fontSize": 10,
		"font": "open sans",
		"location": "bottom-left"
	},
	"size": {
		"canvasWidth": 590,
		"pieInnerRadius": "7%",
		"pieOuterRadius": "95%"
	},
	"data": {
		"sortOrder": "value-desc",
		"content": [
			{
				"label": "JavaScript",
				"value": 264131,
				"color": "#2484c1"
			},
			{
				"label": "Ruby",
				"value": 218812,
				"color": "#0c6197"
			},
			{
				"label": "Java",
				"value": 157618,
				"color": "#4daa4b"
			},
			{
				"label": "PHP",
				"value": 114384,
				"color": "#90c469"
			},
			{
				"label": "Python",
				"value": 95002,
				"color": "#daca61"
			},
			{
				"label": "C+",
				"value": 78327,
				"color": "#e4a14b"
			},
			{
				"label": "C",
				"value": 67706,
				"color": "#e98125"
			},
			{
				"label": "Objective-C",
				"value": 36344,
				"color": "#cb2121"
			},
			{
				"label": "Shell",
				"value": 28561,
				"color": "#830909"
			},
			{
				"label": "Cobol",
				"value": 24131,
				"color": "#923e99"
			},
			{
				"label": "C#",
				"value": 100,
				"color": "#ae83d5"
			},
			{
				"label": "Coldfusion",
				"value": 68,
				"color": "#bf273e"
			},
			{
				"label": "Fortran",
				"value": 218812,
				"color": "#ce2aeb"
			},
			{
				"label": "Coffeescript",
				"value": 157618,
				"color": "#bca44a"
			},
			{
				"label": "Node",
				"value": 114384,
				"color": "#618d1b"
			},
			{
				"label": "Basic",
				"value": 95002,
				"color": "#1ee67b"
			},
			{
				"label": "Cola",
				"value": 36344,
				"color": "#b0ec44"
			},
			{
				"label": "Perl",
				"value": 32170,
				"color": "#a4a0c9"
			},
			{
				"label": "Dart",
				"value": 28561,
				"color": "#322849"
			},
			{
				"label": "Go",
				"value": 264131,
				"color": "#86f71a"
			},
			{
				"label": "Groovy",
				"value": 218812,
				"color": "#d1c87f"
			},
			{
				"label": "Processing",
				"value": 157618,
				"color": "#7d9058"
			},
			{
				"label": "Smalltalk",
				"value": 114384,
				"color": "#44b9b0"
			},
			{
				"label": "Scala",
				"value": 95002,
				"color": "#7c37c0"
			},
			{
				"label": "Visual Basic",
				"value": 78327,
				"color": "#cc9fb1"
			},
			{
				"label": "Scheme",
				"value": 67706,
				"color": "#e65414"
			},
			{
				"label": "Rust",
				"value": 36344,
				"color": "#8b6834"
			},
			{
				"label": "FoxPro",
				"value": 32170,
				"color": "#248838"
			}
		]
	},
	"labels": {
		"outer": {
			"pieDistance": 32
		},
		"inner": {
			"hideWhenLessThanPercentage": 3
		},
		"mainLabel": {
			"fontSize": 11
		},
		"percentage": {
			"color": "#ffffff",
			"decimalPlaces": 0
		},
		"value": {
			"color": "#adadad",
			"fontSize": 11
		},
		"lines": {
			"enabled": true
		},
		"truncation": {
			"enabled": true
		}
	},
	"effects": {
		"load": {
			"speed": 2000
		},
		"pullOutSegmentOnClick": {
			"effect": "linear",
			"speed": 400,
			"size": 8
		}
	},
	"misc": {
		"gradient": {
			"enabled": true,
			"percentage": 52
		}
	}
});
</script>
		<script>
			var datatest = '${letters}';
			//var data = [20, 40, 60];
			//var res = datatest.replace("=", ":");
			var data = JSON.parse(datatest);
			//var data2 = [20, 40, 50];
			//d3.select(".chart")
			//.selectAll("div")
			// .data(data)
			//.enter().append("div")
			//.style("width", //function(d) { return d * 10 + "px"; })
			//  .text(function(d) { return d; });
			var newdata = d3.values(data)
			d3.select(".chart").selectAll("div").data(newdata).enter().append(
					"div").style("width", function(d) {
				return d * 10 + "px";
			}).data(d3.keys(data)).text(function(d) {
				return d;
			});
		</script>
		
		<script>
var pie = new d3pie("pieChart", {
	"header": {
		"title": {
			"text": "Occurence of Characters in a File",
			"fontSize": 24,
			"font": "open sans"
		},
		"subtitle": {
			"text": "A full pie chart to show to illustrate the variance of characters in different files.",
			"color": "#999999",
			"fontSize": 12,
			"font": "open sans"
		},
		"titleSubtitlePadding": 9
	},
	"footer": {
		"color": "#999999",
		"fontSize": 10,
		"font": "open sans",
		"location": "bottom-left"
	},
	"size": {
		"canvasWidth": 590,
		"pieInnerRadius": "7%",
		"pieOuterRadius": "95%"
	},
	"data": {
		"sortOrder": "value-desc",
		"content": [
			{
				"label": "JavaScript",
				"value": 264131,
				"color": "#2484c1"
			},
			{
				"label": "Ruby",
				"value": 218812,
				"color": "#0c6197"
			},
			{
				"label": "Java",
				"value": 157618,
				"color": "#4daa4b"
			},
			{
				"label": "PHP",
				"value": 114384,
				"color": "#90c469"
			},
			{
				"label": "Python",
				"value": 95002,
				"color": "#daca61"
			},
			{
				"label": "C+",
				"value": 78327,
				"color": "#e4a14b"
			},
			{
				"label": "C",
				"value": 67706,
				"color": "#e98125"
			},
			{
				"label": "Objective-C",
				"value": 36344,
				"color": "#cb2121"
			},
			{
				"label": "Shell",
				"value": 28561,
				"color": "#830909"
			},
			{
				"label": "Cobol",
				"value": 24131,
				"color": "#923e99"
			},
			{
				"label": "C#",
				"value": 100,
				"color": "#ae83d5"
			},
			{
				"label": "Coldfusion",
				"value": 68,
				"color": "#bf273e"
			},
			{
				"label": "Fortran",
				"value": 218812,
				"color": "#ce2aeb"
			},
			{
				"label": "Coffeescript",
				"value": 157618,
				"color": "#bca44a"
			},
			{
				"label": "Node",
				"value": 114384,
				"color": "#618d1b"
			},
			{
				"label": "Basic",
				"value": 95002,
				"color": "#1ee67b"
			},
			{
				"label": "Cola",
				"value": 36344,
				"color": "#b0ec44"
			},
			{
				"label": "Perl",
				"value": 32170,
				"color": "#a4a0c9"
			},
			{
				"label": "Dart",
				"value": 28561,
				"color": "#322849"
			},
			{
				"label": "Go",
				"value": 264131,
				"color": "#86f71a"
			},
			{
				"label": "Groovy",
				"value": 218812,
				"color": "#d1c87f"
			},
			{
				"label": "Processing",
				"value": 157618,
				"color": "#7d9058"
			},
			{
				"label": "Smalltalk",
				"value": 114384,
				"color": "#44b9b0"
			},
			{
				"label": "Scala",
				"value": 95002,
				"color": "#7c37c0"
			},
			{
				"label": "Visual Basic",
				"value": 78327,
				"color": "#cc9fb1"
			},
			{
				"label": "Scheme",
				"value": 67706,
				"color": "#e65414"
			},
			{
				"label": "Rust",
				"value": 36344,
				"color": "#8b6834"
			},
			{
				"label": "FoxPro",
				"value": 32170,
				"color": "#248838"
			}
		]
	},
	"labels": {
		"outer": {
			"pieDistance": 32
		},
		"inner": {
			"hideWhenLessThanPercentage": 3
		},
		"mainLabel": {
			"fontSize": 11
		},
		"percentage": {
			"color": "#ffffff",
			"decimalPlaces": 0
		},
		"value": {
			"color": "#adadad",
			"fontSize": 11
		},
		"lines": {
			"enabled": true
		},
		"truncation": {
			"enabled": true
		}
	},
	"effects": {
		"load": {
			"speed": 2000
		},
		"pullOutSegmentOnClick": {
			"effect": "linear",
			"speed": 400,
			"size": 8
		}
	},
	"misc": {
		"gradient": {
			"enabled": true,
			"percentage": 52
		}
	}
});
</script>
	</div>

	</div>
	<!-- /.container -->


	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>