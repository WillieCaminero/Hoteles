$(document).ready(function(){
    $( ".datepicker" ).datepicker();
    $(".datepicker").datepicker({ minDate: 1 });
	$(".datepicker").datepicker("option", "dateFormat", "dd/mm/yy");

    var slider = new MasterSlider();
    slider.setup('HomeSlide' , {
        width:1600,    // slider standard width
        height:900,   // slider standard height
        space:0,
        fullwidth:true,
        mouse: false,
        loop: true,
        autoplay: true,
        view:"mask"
        // more slider options goes here...
    });
    slider.control('bullets' , {autohide:false  , dir:"h", align:"bottom", margin: 110});
    // adds Arrows navigation control to the slider.
    slider.control('arrows');

    //Scroll
    $(window).scroll(function() {
        //After scrolling 100px from the top...
        if ( $(window).scrollTop() >= 100 ) {
            $('#header-desktop[data-change="true"]').removeClass('homeheader');
            $('#header-desktop[data-change="true"]').addClass('normalheader');
            $('#header-desktop[data-change="true"] #iniciar').addClass('hide-test');
            $('#header-desktop[data-change="true"] #registrar').addClass('hide-test');
            $('#header-desktop[data-change="true"] .top').hide(100);

            //Otherwise remove inline styles and thereby revert to original stying
        } else {
            $('#header-desktop[data-change="true"]').addClass('homeheader');
            $('#header-desktop[data-change="true"]').removeClass('normalheader');
            $('#header-desktop[data-change="true"] #iniciar').removeClass('hide-test');
            $('#header-desktop[data-change="true"] #registrar').removeClass('hide-test');
            $('#header-desktop[data-change="true"] .top').show(100);
        }
    });
    
    $("#loader").fadeOut("slow");
});