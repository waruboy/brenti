var ready;

ready = function($){
	var haltes = gon.haltes;
	var $haltes_id = $('#location_halte_id');
	$('#koridor_koridor_id').change(function(){
		var koridor = $(this).val();
		var selected_haltes_id = haltes[koridor] || [];
		var html = $.map(selected_haltes_id, function(halte_id){
			return '<option value="' + halte_id + '">' + gon.haltes_name[halte_id] + '</option>'
		}).join('');
		$haltes_id.html(html)
	});
};

$(document).ready(ready);
$(document).on('page:load', ready)
