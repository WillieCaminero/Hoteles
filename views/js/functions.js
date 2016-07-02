$(document).ready(function(){
    $( ".datepicker" ).datepicker();
    $(".datepicker").datepicker({ minDate: 1 });
	$(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");
});