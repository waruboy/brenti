$(document).ready(function(){
	if(typeof gon !='undefined') {
		var val = gon.haltes;
		
		$('#search_halte').autocomplete({
			lookup: val,
		});
	}
});
