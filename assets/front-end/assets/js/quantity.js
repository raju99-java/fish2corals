 /**=====================
     Quantity js
==========================**/
$(".qty-right-plus").click(function(){9>$(this).prev().val()&&$(this).prev().val(+$(this).prev().val()+1)}),$(".qty-left-minus").click(function(){$(this).next().val()>1&&$(this).next().val()>1&&$(this).next().val(+$(this).next().val()-1)});