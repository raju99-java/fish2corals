!function(o){"use strict";o(".bg-top").parent().addClass("b-top"),o(".bg-bottom").parent().addClass("b-bottom"),o(".bg-center").parent().addClass("b-center"),o(".bg-left").parent().addClass("b-left"),o(".bg-right").parent().addClass("b-right"),o(".bg_size_content").parent().addClass("b_size_content"),o(".bg-img").parent().addClass("bg-size"),o(".bg-img.blur-up").parent().addClass("blur-up lazyload"),o(".bg-img").each(function(){var t=o(this),a=t.attr("src");t.parent().css({"background-image":"url("+a+")","background-size":"cover","background-position":"center","background-repeat":"no-repeat",display:"block"}),t.hide()}),o(".grid-option li").on("click",function(){o(this).addClass("active").siblings().removeClass("active")}),o(".grid-option .grid-btn").on("click",function(){o(".product-list-section").removeClass("list-style")}),o(".grid-option .list-btn").on("click",function(){o(".product-list-section").addClass("list-style")}),o(".three-grid").on("click",function(t){o(".product-list-section").removeClass("row-cols-xxl-5 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2 list-style").addClass("row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2")}),o(".grid-btn").on("click",function(t){o(".product-list-section").removeClass("row-cols-xxl-5 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2 list-style").addClass("row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2")}),o(".five-grid").on("click",function(t){o(".product-list-section").removeClass("list-style").addClass("row-cols-xxl-5 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2")});var t=o(window).width();t<"1199"&&o(".grid-options ul .grid-btn").addClass("active"),t<"1399"&&o(".grid-options ul .three-grid").addClass("active")}(jQuery);var contentwidth=$(window).width();contentwidth<"576"?($(".footer-title h4").append('<span class="according-menu float-end"><i class="fa-solid fa-angle-down"></i></span>'),$(".footer-title").on("click",function(){$(".footer-title").removeClass("active").find("span").replaceWith('<span class="according-menu float-end"><i class="fa-solid fa-angle-down"></i></span>'),$(".footer-contact, .footer-contain").slideUp("normal"),!0==$(this).next().is(":hidden")?($(this).addClass("active"),$(this).find("span").replaceWith('<span class="according-menu float-end"><i class="fas fa-chevron-up"></i></span>'),$(this).next().slideDown("normal")):$(this).find("span").replaceWith('<span class="according-menu float-end"><i class="fa-solid fa-angle-down"></i></span>')}),$(".footer-contact, .footer-contain").hide()):$(".footer-contact, .footer-contain").show(),$(document).ready(function(){$(".mobile-menu ul li a").click(function(){$("li a").removeClass("active"),$(this).addClass("active")})}),$(document).ready(function(){$(".button-item").on("click",function(){$(".item-section").addClass("active")}),$(".close-button").on("click",function(){$(".item-section").removeClass("active")}),$(".btn-cart").on("click",function(){setTimeout(function(){$(".item-section").addClass("active")},1500),setTimeout(function(){$(".item-section").removeClass("active")},5e3)})}),$(".qty-box .quantity-right-plus").on("click",function(){var o=$(this).parents(".qty-box").find(".input-number"),t=parseInt(o.val(),10);isNaN(t)||o.val(t+0)}),$(".qty-box .quantity-left-minus").on("click",function(){var o=$(this).parents(".qty-box").find(".input-number"),t=parseInt(o.val(),10);!isNaN(t)&&t>0&&o.val(t-0)}),$(document).ready(function(){$(window).scroll(function(){$(this).scrollTop()>50?$(".back-to-top").fadeIn():$(".back-to-top").fadeOut()}),$(".back-to-top").click(function(){return $("body,html").animate({scrollTop:0},400),!1})}),$(".left-dashboard-show").click(function(){$(".bg-overlay, .dashboard-left-sidebar").addClass("show")}),$(".close-button, .bg-overlay, .user-nav-pills .nav-item .nav-link").click(function(){$(".bg-overlay, .dashboard-left-sidebar").removeClass("show")});var tooltipTriggerList=[].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]')),tooltipList=tooltipTriggerList.map(function(o){return new bootstrap.Tooltip(o)});$(".ok-button").click(function(){$(".cookie-bar-box").addClass("hide")}),$(".bg-top").parent().addClass("b-top"),$(".bg-bottom").parent().addClass("b-bottom"),$(".bg-center").parent().addClass("b-center"),$(".bg-left").parent().addClass("b-left"),$(".bg-right").parent().addClass("b-right"),$(".bg_size_content").parent().addClass("b_size_content"),$(".bg-img").parent().addClass("bg-size"),$(".bg-img.blur-up").parent().addClass("blur-up lazyload"),$(".bg-img").each(function(){var o=$(this),t=o.attr("src");o.parent().css({"background-image":"url("+t+")","background-size":"cover","background-position":"center","background-repeat":"no-repeat",display:"block"}),o.hide()}),$(".search-box").on("click",function(){$(this).closest(".rightside-box").find(".search-full").addClass("open")}),$(window).on("load resize",function(){$(".search-type").on("click",function(){$(this).parents(".search-full").addClass("show")}),$(".close-search").on("click",function(){$(this).closest(".rightside-box").find(".search-full").removeClass("open")})}),$(".notifi-wishlist").on("click",function(){$.notify({icon:"fa fa-check",title:"Success!",message:"Item Successfully added in wishlist"},{element:"body",position:null,type:"info",allow_dismiss:!0,newest_on_top:!1,showProgressbar:!0,placement:{from:"top",align:"right"},offset:20,spacing:10,z_index:1031,delay:5e3,animate:{enter:"animated fadeInDown",exit:"animated fadeOutUp"},icon_type:"class",template:'<div data-notify="container" class="col-xxl-3 col-lg-5 col-md-6 col-sm-7 col-12 alert alert-{0}" role="alert"><button type="button" aria-hidden="true" class="btn-close" data-notify="dismiss"></button><span data-notify="icon"></span> <span data-notify="title">{1}</span> <span data-notify="message">{2}</span><div class="progress" data-notify="progressbar"><div class="progress-bar progress-bar-info progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div></div><a href="{3}" target="{4}" data-notify="url"></a></div>'})});const loaderEl=document.getElementsByClassName("fullpage-loader")[0];function readURL(o){$(".update_img").attr("src",window.URL.createObjectURL(o.files[0]))}document.addEventListener("readystatechange",o=>{"complete"==document.readyState&&(loaderEl.classList.add("fullpage-loader--invisible"),setTimeout(()=>{loaderEl.parentNode.removeChild(loaderEl)},100))}),$(".dropdown-menu li a").on("click",function(){var o=$(this).closest("a"),t=o.text(),a=o.find("img").attr("src");$(this).closest(".dropdown-menu").prev(".dropdown-toggle").find("span").text(t),$(this).closest(".dropdown-menu").prev(".dropdown-toggle").find("img").attr("src",a)}),$(".addCart").click(function(){$(".add-cart-box").addClass("show"),setTimeout(function(){$(".add-cart-box").removeClass("show")},5e3)}),$(".add-cart-box .btn-close").click(function(){$(".add-cart-box").removeClass("show")}),$(".product-packege .select-packege li a").click(function(){$("li a").removeClass("active"),$(this).addClass("active")}),$(window).scroll(function(){$(this).scrollTop()>100?$("header").addClass("active"):$("header").removeClass("active")}),$(".theme-option .setting-box .setting-button").click(function(){$(".theme-setting-2").toggleClass("active"),$(this).find("i").toggleClass("fa-xmark")}),$(".close_button").click(function(){$(this).closest(".product-box-contain").fadeOut("slow",function(){$(this).closest(".product-box-contain").remove()})}),$(".mobile-category").click(function(){$(".bg-overlay, .category-dropdown").addClass("show")}),$(".close-button, .bg-overlay").click(function(){$(".bg-overlay, .category-dropdown").removeClass("show")}),$(".close-notification").click(function(){$(".header-notification").addClass("remove")});var contentwidth=$(window).width();contentwidth<"767"&&($(".onhover-category-list .category-name").append('<span class="according-menu">+</span>'),$(".category-name").on("click",function(){$(".category-name").removeClass("active").find("span").replaceWith('<span class="according-menu">+</span>'),$(".onhover-category-list .onhover-category-box").slideUp("normal"),!0==$(this).next().is(":hidden")?($(this).addClass("active"),$(this).find("span").replaceWith('<span class="according-menu">-</span>'),$(this).next().slideDown("normal")):$(this).find("span").replaceWith('<span class="according-menu">+</span>')}),$(".accordion-box").hide()),$(".navbar-toggler-icon-2").click(function(){$(".bg-overlay, .sidebar-col").addClass("show")}),$(".bg-overlay").click(function(){$(".bg-overlay, .sidebar-col").removeClass("show")}),$(document).ready(function(){$("#owl-demo").owlCarousel({items:1,navigation:!1,slideSpeed:300,itemsDesktop:[1199,3],itemsDesktopSmall:[980,2],itemsMobile:[600,1],navigation:!0,navigationText:["",""],pagination:!0,autoPlay:!0})});