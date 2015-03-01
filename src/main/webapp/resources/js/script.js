// declaration du datetime picker
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

// fonction de remplacement d'une chaine de caractaire sur base d'une expression reguliere
function preg_replace (array_pattern, array_pattern_replace, my_string)  {
	var new_string = String (my_string);
	for (i=0; i<array_pattern.length; i++) {
		var reg_exp= RegExp(array_pattern[i], "gi");
		var val_to_replace = array_pattern_replace[i];
		new_string = new_string.replace (reg_exp, val_to_replace);
	}
	return new_string;
}

//remplacement des lettres accentuees sur les champs de nom de villes
$( ".input-ville" ).keyup(function(event) {
	var new_string = "";
	var pattern_accent = new Array("é", "è", "ê", "ë", "ç", "à", "â", "ä", "î", "ï", "ù", "ô", "ó", "ö");
	var pattern_replace_accent = new Array("e", "e", "e", "e", "c", "a", "a", "a", "i", "i", "u", "o", "o", "o");
	if (event.target.value && event.target.value != "") {
		new_string = preg_replace (pattern_accent, pattern_replace_accent, event.target.value);
		event.target.value = new_string;
	}
});

// je ne sais plus
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

        }

	}, 300, fullDateString.getTime())
});
