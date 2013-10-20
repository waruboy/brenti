var ready;

ready = function(){
	var val = [
	{ value: "AA", data: 'AA' },
	{ value: "BB", data: 'BB' },
	];
	
	$('#search').autocomplete({
		lookup: val,
	});

	$("#search").focus(function(){
		alert("sss");
	});
	
};

$(document).ready(ready);

$(document).on('page:load', ready);