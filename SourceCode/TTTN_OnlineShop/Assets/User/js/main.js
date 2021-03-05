/*--------------------------------------------------
Template Name: Makali;
Description: Makali – Multipurpose HTML Template;
Version: 1.0;

NOTE: main.js, All custom script and plugin activation script in this file. 
-----------------------------------------------------

    JS INDEX
    ================================================
    01. Newsletter Popup
    02. Mobile Menu Activation
    03. Tooltip Activation
    04. Checkout Page Activation
    05. Slider Activation
    06. Our Product Activation
    07. Our Product Activation Two
    08. Best Seller Activation
    09. Best Seller Activation Two
    10. Blog Activation
    11. Daily Deal Activation
    12. Single Deal Activation
    13. Hot Deal Activation
    14. Hot Deal Activation Two
    15. Tripple Pro Activation
    16. Five Slide Item
    17. Four Slide Item
    18. Arrival Pro Activation
    19. Categorie Products Activation
    20. Thumbnail Product activation
    21. Testmonial Activation
    22. Testmonial Activation Two
    23. Recent Post Activation
    24. Categorie Slider Activation
    25. Categorie Slider Activation Two
    26. Countdown Js Activation
    27. ScrollUp Activation
    28. Sticky-Menu Activation
    29. Nice Select Activation
    30. Price Slider Activation
    31. Brand Logo  Activation
    32. Category Menu
    33. Four Slide Item Two
    34. Categorie Slider Activation Three
    35. Popular Categories Slider
    36. Popular Categories Slider Two
    37. Categorie Slider Activation Four
    38. Six Slide Item
    39. Categorie Slider Activation Five
    40. Brand Logo Activation Two
    41. Arrival Pro Activation Two
    
================================================*/

(function ($) {
    "use Strict";
    
    /*--------------------------
    01. Newsletter Popup
    ---------------------------*/
    setTimeout(function () {
        $('.popup_wrapper').css({
            "opacity": "1",
            "visibility": "visible"
        });
        $('.popup_off').on('click', function () {
            $(".popup_wrapper").fadeOut(500);
        })
    }, 5000);

    /*----------------------------
    02. Mobile Menu Activation
    -----------------------------*/
    jQuery('.mobile-menu nav').meanmenu({
        meanScreenWidth: "991",
    });

    /*----------------------------
    03. Tooltip Activation
    ------------------------------ */
    $('.pro-actions a').tooltip({
        animated: 'fade',
        placement: 'top',
        container: 'body'
    });

    /*----------------------------
    04. Checkout Page Activation
    -----------------------------*/
    $('#showlogin').on('click', function () {
        $('#checkout-login').slideToggle();
    });
    $('#showcoupon').on('click', function () {
        $('#checkout_coupon').slideToggle();
    });
    $('#cbox').on('click', function () {
        $('#cbox_info').slideToggle();
    });
    $('#ship-box').on('click', function () {
        $('#ship-box-info').slideToggle();
    });

    /*----------------------------
    05. Slider Activation
    -----------------------------*/
    $(".slider-activation").owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        autoplay: true,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        items: 1,
        autoplayTimeout: 10000,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        dots: true,
        autoHeight: true,
        lazyLoad: true,
    });

    /*----------------------------------------------------
    06. Our Product Activation
    -----------------------------------------------------*/
    $('.our-pro-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    })
    /*----------------------------------------------------
    07. Our Product Activation Two
    -----------------------------------------------------*/
    $('.our-pro-active-2').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 5
            }
        }
    })
    /*----------------------------------------------------
    08. Best Seller Activation
    -----------------------------------------------------*/
    $('.best-seller_active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 2
            }
        }
    })

    /*----------------------------------------------------
    09. Best Seller Activation Two
    -----------------------------------------------------*/
    $('.best-seller_active-2').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 3
            }
        }
    })

    /*-------------------------------
    10. Blog Activation
    ---------------------------------*/
    $('.blog-activation').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        smartSpeed: 700,
        margin: 30,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 3
            }
        }
    })
    
    /*----------------------------------------------------
    11. Daily Deal Activation
    -----------------------------------------------------*/
    $('.daily-deal-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 2
            }
        }
    })
    
    /*----------------------------------------------------
    12. Single Deal Activation
    -----------------------------------------------------*/
    $('.single-deal-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 1000,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        items:1,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            576: {
                items: 2
            },
            992: {
                items: 1
            },
            1200: {
                items: 1
            }
        }
    })

    /*----------------------------------------------------
    13. Hot Deal Activation
    -----------------------------------------------------*/
    $('.hot-deals-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 3
            }
        }
    })
    /*----------------------------------------------------
    14. Hot Deal Activation Two
    -----------------------------------------------------*/
    $('.hot-deals-active-2').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 4
            }
        }
    })
    
    /*----------------------------------------------------
    15. Tripple Pro Activation
    -----------------------------------------------------*/
    $('.tripple-pro-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 3
            }
        }
    })
    /*----------------------------------------------------
    16. Five Slide Item
    -----------------------------------------------------*/
    $('.five-slide_item').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 5
            }
        }
    })
    /*----------------------------------------------------
    17. Four Slide Item
    -----------------------------------------------------*/
    $('.four-slide_item').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    })
    
    /*----------------------------------------------------
    18. Arrival Pro Activation
    -----------------------------------------------------*/
    $('.arrival-pro-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 1
            },
            992: {
                items: 2
            },
            1200: {
                items: 2
            }
        }
    })
    
    /*----------------------------------------------------
    19. Categorie Products Activation
    -----------------------------------------------------*/
    $('.categorie-pro-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 3
            },
            992: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    })
    
    /*-------------------------------------
    20. Thumbnail Product activation
    --------------------------------------*/
    $('.thumb-menu').owlCarousel({
        loop: true,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 15,
        smartSpeed: 500,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 3,
                autoplay: true,
            },
            768: {
                items: 3
            },
            1000: {
                items: 3
            }
        }
    })
    $('.thumb-menu a').on('click', function () {
        $('.thumb-menu a').removeClass('active');
    })

    /*----------------------------
    21. Testmonial Activation
    -----------------------------*/
    $(".testmonial-active").owlCarousel({
        loop: true,
        margin: 0,
        smartSpeed: 500,
        nav: false,
        autoplay: false,
        items: 1,
        dots: true,
    });
    /*--------------------------------
    22. Testmonial Activation Two
    -----------------------------*/
    $(".testmonial-active-2").owlCarousel({
        loop: true,
        margin: 0,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        nav: true,
        autoplay: false,
        items: 1,
        dots: false,
    });

    /*----------------------------
    23. Recent Post Activation
    -----------------------------*/
    $(".recent-post-active").owlCarousel({
        loop: true,
        margin: 0,
        smartSpeed: 500,
        nav: false,
        autoplay: false,
        items: 1,
        dots: false,
    });
    
    /*----------------------------------------------------
    24. Categorie Slider Activation
    -----------------------------------------------------*/
    $('.categorie-slider-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 1
            },
            1200: {
                items: 1
            }
        }
    })
    /*----------------------------------------------------
    25. Categorie Slider Activation Two
    -----------------------------------------------------*/
    $('.categorie-slider-active-2').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 1
            },
            1200: {
                items: 1
            }
        }
    })
    
    /*----------------------------
    26. Countdown Js Activation
    -----------------------------*/
    $('[data-countdown]').each(function () {
        var $this = $(this),
            finalDate = $(this).data('countdown');
        $this.countdown(finalDate, function (event) {
            $this.html(event.strftime('<div class="count"><p>%D</p><span>Days</span></div><div class="count"><p>%H</p> <span>Hours</span></div><div class="count"><p>%M</p> <span>Mins</span></div><div class="count"> <p>%S</p> <span>Secs</span></div>'));
        });
    });

    /*----------------------------
    27. ScrollUp Activation
    -----------------------------*/
    $.scrollUp({
        scrollName: 'scrollUp', // Element ID
        topDistance: '550', // Distance from top before showing element (px)
        topSpeed: 1000, // Speed back to top (ms)
        animation: 'fade', // Fade, slide, none
        scrollSpeed: 900,
        animationInSpeed: 1000, // Animation in speed (ms)
        animationOutSpeed: 1000, // Animation out speed (ms)
        scrollText: '<i class="fa fa-angle-up" aria-hidden="true"></i>', // Text for element
        activeOverlay: false // Set CSS color to display scrollUp active point, e.g '#00FFFF'
    });

    /*----------------------------
    28. Sticky-Menu Activation
    ------------------------------ */
    $(window).on('scroll',function() {
        if ($(this).scrollTop() > 300) {
            $('.header-sticky').addClass("sticky");
        } else {
            $('.header-sticky').removeClass("sticky");
        }
    });

    /*----------------------------
    29. Nice Select Activation
    ------------------------------ */
    $('select').niceSelect();

    /*----------------------------
    30. Price Slider Activation
    -----------------------------*/
    $("#slider-range").slider({
        range: true,
        min: 0,
        max: 100,
        values: [0, 85],
        slide: function (event, ui) {
            $("#amount").val("$" + ui.values[0] + "  $" + ui.values[1]);
        }
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
        "  $" + $("#slider-range").slider("values", 1));

    /*----------------------------------------------------
    31. Brand Logo  Activation
    -----------------------------------------------------*/
    $('.brand-logo-active').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            340: {
                items: 2
            },
            480: {
                items: 3
            },
            768: {
                items: 4
            },
            992: {
                items: 4
            },
            1200: {
                items: 5
            }
        }
    })

    /*----------------------------------------------------
    32. Category Menu
    -----------------------------------------------------*/
	$('.rx-parent').on('click', function () {
		$('.rx-child').slideToggle();
		$(this).toggleClass('rx-change');
	});
	// category heading
	$('.category-heading').on('click', function () {
		$('.category-menu-list').slideToggle(900);
	});
	/*-- Category Menu Toggles --*/
	function categorySubMenuToggle() {
		var screenSize = $(window).width();
		if (screenSize <= 991) {
			$('#cate-toggle .right-menu > a').prepend('<i class="expand menu-expand"></i>');
			$('.category-menu .right-menu ul').slideUp();
		} else {
			$('.category-menu .right-menu > a i').remove();
			$('.category-menu .right-menu ul').slideDown();
		}
	}
	categorySubMenuToggle();
	$(window).resize(categorySubMenuToggle);
	/*-- Category Sub Menu --*/
	function categoryMenuHide() {
		var screenSize = $(window).width();
		if (screenSize <= 1199) {
			$('.category-menu-list').hide();
		} else {
			$('.category-menu-list').show();
		}
	}
    categoryMenuHide();
	$('.category-menu-hidden').find('.category-menu-list').hide();
	$('.category-menu-list').on('click', 'li a, li a .menu-expand', function (e) {
		var $a = $(this).hasClass('menu-expand') ? $(this).parent() : $(this);
		$(this).toggleClass('active');
		if ($a.parent().hasClass('right-menu')) {
			if ($a.attr('href') === '#' || $(this).hasClass('menu-expand')) {
				if ($a.siblings('ul:visible').length > 0) $a.siblings('ul').slideUp();
				else {
					$(this).parents('li').siblings('li').find('ul:visible').slideUp();
					$a.siblings('ul').slideDown();
				}
			}
		}
		if ($(this).hasClass('menu-expand') || $a.attr('href') === '#') {
			e.preventDefault();
			return false;
		}
    });
    
    /*----------------------------------------------------
    33. Four Slide Item Two
    -----------------------------------------------------*/
    jQuery(document).ready(function($) {

        var carousel = $(".four-slide_item-2");
        carousel.owlCarousel({
            loop: true,
            nav: true,
            dots: false,
            smartSpeed: 500,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            margin: 20,
            responsive: {
                0: {
                    items: 1,
                    autoplay: true,
                    smartSpeed: 300
                },
                576: {
                    items: 1,
                    autoplay: true,
                    smartSpeed: 300
                },
                768: {
                    items: 2
                },
                992: {
                    items: 3
                },
                1200: {
                    items: 6
                }
            }
        });
    
        checkClasses();
        carousel.on('translated.owl.carousel', function(event) {
            checkClasses();
        });
    
        function checkClasses(){
            var total = $('.four-slide_item-2 .owl-stage .owl-item.active').length;
    
            $('.four-slide_item-2 .owl-stage .owl-item').removeClass('firstActiveItem lastActiveItem');
    
            $('.four-slide_item-2 .owl-stage .owl-item.active').each(function(index){
                if (index === 0) {
                    // this is the first one
                    $(this).addClass('firstActiveItem');
                }
                if (index === total - 1 && total>1) {
                    // this is the last one
                    $(this).addClass('lastActiveItem');
                }
            });
        }
    });
    /*----------------------------------------------------
    34. Categorie Slider Activation Three
    -----------------------------------------------------*/
    $('.categorie-slider-active-3').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 3
            }
        }
    })
    /*----------------------------------------------------
    35. Popular Categories Slider
    -----------------------------------------------------*/
    $('.popular-categories_slider').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 30,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            340: {
                items: 2
            },
            480: {
                items: 3
            },
            768: {
                items: 4
            },
            992: {
                items: 4
            },
            1200: {
                items: 5
            }
        }
    })
    /*----------------------------------------------------
    36. Popular Categories Slider Two
    -----------------------------------------------------*/
    $('.popular-categories_slider-2').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 30,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            340: {
                items: 2
            },
            480: {
                items: 3
            },
            768: {
                items: 4
            },
            992: {
                items: 4
            },
            1200: {
                items: 5
            }
        }
    })
    /*----------------------------------------------------
    37. Categorie Slider Activation Four
    -----------------------------------------------------*/
    $('.categorie-slider-active-4').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 2
            }
        }
    })
    /*----------------------------------------------------
    38. Six Slide Item
    -----------------------------------------------------*/
    $('.six-slide_item').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 4
            },
            1200: {
                items: 6
            }
        }
    })

    /*----------------------------------------------------
    39. Categorie Slider Activation Five
    -----------------------------------------------------*/
    $('.categorie-slider-active-5').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        smartSpeed: 1500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 500
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    })

    /*----------------------------------------------------
    40. Brand Logo Activation Two
    -----------------------------------------------------*/
    $('.brand-logo-active-2').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            340: {
                items: 1
            },
            480: {
                items: 3
            },
            768: {
                items: 4
            },
            992: {
                items: 4
            },
            1200: {
                items: 5
            }
        }
    })
    /*----------------------------------------------------
    41. Arrival Pro Activation Two
    -----------------------------------------------------*/
    $('.arrival-pro-active-2').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        margin: 20,
        responsive: {
            0: {
                items: 1,
                autoplay: true,
                smartSpeed: 300
            },
            480: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 2
            },
            1200: {
                items: 2
            }
        }
    })

})(jQuery);