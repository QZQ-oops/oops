"use strict";$(function(){$(".head2-right-r").click(function(){location.href="html/shopping.html"}),$(".go").click(function(){location.href="html/shopping.html"});var s=cookie.get("user");s?($(".ming").html(s+"欢迎您"),$(".outlog").css("display","block"),$(".onlog").css("display","none"),$(".che").hover(function(){$(".caron").css("display","block")},function(){$(".caron").css("display","none")}),$(".caron").hover(function(){$(".caron").css("display","block")},function(){$(".caron").css("display","none")}),$(".tuichu").click(function(){var s=new Date;s.setTime(s.getTime()-1),document.cookie="user="+escape("")+";expires="+s.toUTCString()+";path=/YY",$(".outlog").css("display","none"),$(".onlog").css("display","block"),window.location.reload()})):($(".outlog").css("display","none"),$(".onlog").css("display","block"),$(".che").hover(function(){$(".carout").css("display","block")},function(){$(".carout").css("display","none")}),$(".carout").hover(function(){$(".carout").css("display","block")},function(){$(".carout").css("display","none")}));var i=$("#list li").outerWidth();$("#list li").css("left",i),$("#list li:first").css("left",0);var o=0,n=null;function l(){$("#list li").eq(o).stop().animate({left:-i}),o=++o>$("#list li").length-1?0:o,$("#list li").eq(o).css("left",i),$("#list li").eq(o).stop().animate({left:0}),t(o)}n=setInterval(l,3e3),$(".box").hover(function(){clearInterval(n)},function(){n=setInterval(l,3e3)});var c=0;function t(s){$("#light span").attr("class",""),$("#light span").eq(s).addClass("active")}$("#list li").each(function(s,i){var o="<span>"+(s+1)+"</span>";$("#light").append(o),$("#light span").eq(0).addClass("active")}),2e3<new Date-c&&$("#light span").hover(function(){o<$(this).index()&&($("#list li").eq(o).stop().animate({left:-i}),$("#list li").eq($(this).index()).css("left",i),$("#list li").eq($(this).index()).stop().animate({left:0})),o>$(this).index()&&($("#list li").eq(o).stop().animate({left:i}),$("#list li").eq($(this).index()).css("left",-i),$("#list li").eq($(this).index()).stop().animate({left:0})),t(o=$(this).index()),c=new Date}),$(".header1").hover(function(){$(".sent").css("background-color","white"),$(".shanghao").css("display","none"),$(".xiahao").css("display","block"),$(".add").css("display","block")},function(){$(".sent").css("background-color","#f1f1f1"),$(".shanghao").css("display","block"),$(".xiahao").css("display","none"),$(".add").css("display","none")}),$(".net").hover(function(){$(".netshow").css("display","block"),$(".netshow dd").on("mouseover",function(){$(".netshow dd").css("background","white"),$(this).css("background","#ccc")})},function(){$(".netshow").css("display","none")}),$(".shouji").hover(function(){$(".shoujiyinchang").css("display","block"),$(".shoujierweima").css("display","block")},function(){$(".shoujiyinchang").css("display","none"),$(".shoujierweima").css("display","none")}),$("#nav-list dl dd").hover(function(){$(".tow").css("display","block"),$(".tow li").css("display","none"),$(".tow li").eq($(this).index()-1).css("display","block")},function(){$(".tow li").css("display","none")}),$(".tow li").hover(function(){$(".tow").eq(0).css("diplay","block"),$(".tow li").eq($(this).index()).css("display","block")},function(){$(".tow").css("display","none")}),$("#nav-list dl dd").click(function(){location.href="html/list.html"}),$(".yi").on("click",function(){$(".yi").css("color","black"),$(this).css("color","#d2b994"),$(".er").css("display","none"),$(".er").eq($(this).index()).css("display","block")}),$(".san").on("click",function(){$(".san").css("color","black"),$(this).css("color","#d2b994"),$(".si").css("display","none"),$(".si").eq($(this).index()).css("display","block")}),$(".ul1 li").hover(function(){$(".qq").eq($(this).index()).css("display","none"),$(".ww").eq($(this).index()).css("display","block")},function(){$(".qq").eq($(this).index()).css("display","block"),$(".ww").eq($(this).index()).css("display","none")}),$(".ul1 li:first").hover(function(){$(".zaixian").css("display","block")},function(){$(".zaixian").css("display","none")}),$(".zaixian").hover(function(){$(".zaixian").css("display","block")},function(){$(".zaixian").css("display","none")}),$(".ul1 li:last").click(function(){$("html,body").animate({scrollTop:0},"slow")});var e=$(".lou").outerHeight(),a=$(".lou").offset().top;$(window).scroll(function(){console.log(e),a-200<$(window).scrollTop()&&$(window).scrollTop()<5e3?$(".tiaolou").css("display","block"):$(".tiaolou").css("display","none")}),$(".tiaolou ul li").hover(function(){$(".shows").eq($(this).index()).css("display","none"),$(".hides").eq($(this).index()).css("display","block")},function(){$(".shows").eq($(this).index()).css("display","block"),$(".hides").eq($(this).index()).css("display","none")}),$(".tiaolou ul li").click(function(){$("html,body").animate({scrollTop:e*$(this).index()+a},"slow"),$(".shows").eq($(this).index()).css("display","none"),$(".hides").eq($(this).index()).css("display","block")}),$(".f1-1 li").mouseover(function(){$(".f1-1 li").css("background","#f0f0f0"),$(this).css("background","white"),$(".f1-2 li").css("display","none"),$(".f1-2 li").eq($(this).index()).css("display","block")})});