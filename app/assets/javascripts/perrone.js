$('document').ready(function(){

	$('.dropdown').on({
    "shown.bs.dropdown": function() {$('button.nav-menu i').removeClass('fa-caret-down').addClass('fa-caret-up'); },
    "hide.bs.dropdown":  function() {$('button.nav-menu i').removeClass('fa-caret-up').addClass('fa-caret-down');}
	});
});