<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap Template</title>

	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
				<a class="navbar-brand">Vas y en bus !</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Carousel
	================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="http://lorempixel.com/1350/500/city" alt="First slide">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-lg-offset-5 col-sm-5 col-sm-offset-6">
							<h1>Example headline.</h1>
							<p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="http://lorempixel.com/1350/500/city" alt="Second slide">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-lg-offset-5 col-sm-5 col-sm-offset-6">
							<h1>Another example headline.</h1>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="http://lorempixel.com/1350/500/city" alt="Third slide">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-lg-offset-5 col-sm-5 col-sm-offset-6">
							<h1>One more for good measure.</h1>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div><!-- /.carousel -->

	<div class="container my-form-box">
		<form method="post">
			<div class="row">
				<div class="well col-lg-4 col-sm-5 col-sm-offset-1 ">
					<h1>Quel est votre trajet&nbsp;?</h1>
					<div class="form-group">
						<input type="text" name="ville-depart" class="form-control input-ville" placeholder="Ville de départ">
					</div>
					<div class="form-group">
						<input type="text" name="ville-arrivee" class="form-control input-ville" placeholder="Ville d'arrivée">
					</div>
					<div class="form-group">
						<div class="input-group date form_datetime" data-date-format="dd MM yyyy à hh:ii" data-link-field="btn_date_depart" data-link-format="yyyy-mm-dd hh:ii">
							<input type="text" class="form-control" placeholder="date de départ" readonly />
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
						<input type="hidden" name="btn_date_depart" id="btn_date_depart" value="" />
					</div>

					<div class="form-group">
						<div class="input-group date form_datetime" data-date-format="dd MM yyyy à hh:ii" data-link-field="btn_date_retour" data-link-format="yyyy-mm-dd hh:ii">
							<input type="text" class="form-control" placeholder="date de retour" readonly />
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
						<input type="hidden" name="btn_date_retour" id="btn_date_retour" value="" />
					</div>
					<div class="form-group">
						<div class="row">
						<div class="col-md-4">
						<select class="selectpicker" data-width="100%">
							<option>0 adulte</option>
							<option selected>1 adulte</option>
							<option>2 adultes</option>
							<option>3 adultes</option>
							<option>4 adultes</option>
							<option>5 adultes</option>
							<option>6 adultes</option>
							<option>7 adultes</option>
							<option>8 adultes</option>
							<option>9 adultes</option>
							<option>10 adultes</option>
						</select>
						</div>
						<div class="col-md-4">
						<select class="selectpicker" data-width="100%">
							<option>0 enfant</option>
							<option>1 enfant</option>
							<option>2 enfants</option>
							<option>3 enfants</option>
							<option>4 enfants</option>
							<option>5 enfants</option>
							<option>6 enfants</option>
							<option>7 enfants</option>
							<option>8 enfants</option>
							<option>9 enfants</option>
							<option>10 enfants</option>
						</select>
						</div>
						<div class="col-md-4">
						<select class="selectpicker" data-width="100%">
							<option>0 bébé</option>
							<option>1 bébé</option>
							<option>2 bébés</option>
							<option>3 bébés</option>
							<option>4 bébés</option>
							<option>5 bébés</option>
							<option>6 bébés</option>
							<option>7 bébés</option>
							<option>8 bébés</option>
							<option>9 bébés</option>
							<option>10 bébés</option>
						</select>
						</div>
						</div>
						<i>bébé en dessous de 3 ans</i>
					</div>
					<button type="submit" class="btn btn-primary">Rechercher</button>
				</div>
			</div>
		</form>
	</div>



    <!-- Carousel
    ================================================== -->
	<div id="miseEnAvant" class="slide carousel" data-ride="miseEnAvant">
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-xs-12">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Marseil</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Lille</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 hidden-sm hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Lyon</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-xs-12">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 hidden-sm hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-xs-12">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
						<div class="col-md-3 hidden-sm hidden-xs">
							<div class="well">
								<h2 class="text-center">Paris à Caen</h2>
								<p class="text-center">à partir de <span class="prix">35€99</span></p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Aller voir</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#miseEnAvant" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#miseEnAvant" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div><!-- /.carousel -->


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.fr.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			language:  'fr',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			forceParse: 0,
			startDate: '+0d',
			endDate: '+3m'
		});

		function preg_replace (array_pattern, array_pattern_replace, my_string)  {
			var new_string = String (my_string);
			for (i=0; i<array_pattern.length; i++) {
				var reg_exp= RegExp(array_pattern[i], "gi");
				var val_to_replace = array_pattern_replace[i];
				new_string = new_string.replace (reg_exp, val_to_replace);
			}
			return new_string;
		}


		$( ".input-ville" ).keyup(function(event) {
			var new_string = "";
			var pattern_accent = new Array("é", "è", "ê", "ë", "ç", "à", "â", "ä", "î", "ï", "ù", "ô", "ó", "ö");
			var pattern_replace_accent = new Array("e", "e", "e", "e", "c", "a", "a", "a", "i", "i", "u", "o", "o", "o");
			if (event.target.value && event.target.value != "") {
				new_string = preg_replace (pattern_accent, pattern_replace_accent, event.target.value);
				event.target.value = new_string;
			}
		});
		$('.selectpicker').selectpicker({});

		function isBreakpoint( alias ) {
			return $('.device-' + alias).is(':visible');
		}
		var waitForFinalEvent=function(){var b={};return function(c,d,a){a||(a="I am a banana!");b[a]&&clearTimeout(b[a]);b[a]=setTimeout(c,d)}}();
		var fullDateString = new Date();

		function reafectItemInCarousel(id) {
			$(id + ' well')
		}


		$(window).resize(function () {
			waitForFinalEvent(function(){
if( isBreakpoint('xs') ) {
            //$('.someClass').css('property', 'value');
            //alert('XS');
        }

    }, 300, fullDateString.getTime())
});
	</script>
<div class="device-xs visible-xs">XS</div>
<div class="device-sm visible-sm">SM</div>
<div class="device-md visible-md">MD</div>
<div class="device-lg visible-lg">LG</div>
</body>
</html>
