"use strict";function getid(e){return document.getElementById(e)}function randomNum(e,t){return parseInt(Math.random()*(t-e+1))+e}function randomColor(e){if(16==e){for(var t="#",n=0;n<6;n++){t+="0123456789abcdef"[randomNum(0,15)]}return t}if("rgb"==e)return"rgb("+randomNum(0,255)+","+randomNum(0,255)+","+randomNum(0,255)+")"}function pullMenu(e,t){e.onmouseover=function(){t.style.display="block"},e.onmouseout=function(){t.style.display="none"}}function randomCode(){for(var e="",t="0123456789zxcvbnmlkjhgfdsaqwertyuiopZXCVBNMLKJHGFDSAQWERTYUIOP",n=0;n<4;n++){var r=randomNum(0,t.length-1);e+=t.charAt(r)}return e}function filterTex(e){for(var t=["傻B","妈蛋","bitch","fuck","操","小学生","反清复明"],n=0;n<t.length;n++){var r=new RegExp(t[n],"gi");e=e.replace(r,"***")}return e}function strToObj(e){for(var t={},n=e.split("&"),r=0;r<n.length;r++){var o=n[r].split("=");t[o[0]]=o[1]}return t}function toDB(e){return e<10?"0"+e:""+e}function setTime(e){return{secs:toDB(e%60),mins:toDB(Math.floor(e/60)%60),hours:toDB(Math.floor(e/60/60)%24),days:toDB(Math.floor(e/60/60/24))}}function objToStr(e){var t="";for(var n in e)t+=n+"="+e[n]+"&";return t=t.slice(0,-1)}function firstChild(e){return e.firstElementChild?e.firstElementChild:e.firstChild}function lastChild(e){return e.lastElementChild?e.lastElementChild:e.lastChild}function bind(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent("on"+t,n)}function rollerDir(e,t){var n=!0;function r(e){e=e||event;n=e.wheelDelta?0<e.wheelDelta:e.detail<0,t(n)}e.onmousewheel=r,e.addEventListener&&e.addEventListener("DOMMouseScroll",r,!1)}var checkReg={trim:function(e){return e.replace(/^\s+|\s+$/g,"")},tel:function(e){return/^1[3-9]\d{9}$/.test(e)},email:function(e){return/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(e)},idcard:function(e){return/^(\d{17}|\d{14})[\dX]$/.test(e)},psweasy:function(e){return/^[a-zA-Z]\w{5,17}$/.test(e)},pwwagain:function(e,t){return e===t},urladr:function(e){return/[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?/.test(e)},name:function(e){return/^[a-zA-Z][\w\-]{5,19}$/.test(e)},chinese:function(e){return/^[\u2E80-\u9FFF]+$/.test(e)},birthday:function(e){return/^((((18|19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/.test(e)}};function firstChild(e){return e.firstElementChild?e.firstElementChild:e.firstChild}function lastChild(e){return e.lastElementChild?e.lastElementChild:e.lastChild}function bind(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent("on"+t,n)}function rollerDir(e,t){var n=!0;function r(e){e=e||event;n=e.wheelDelta?0<e.wheelDelta:e.detail<0,t(n)}e.onmousewheel=r,e.addEventListener&&e.addEventListener("DOMMouseScroll",r,!1)}var cookie={set:function(e,t,n){var r=e+"="+t;n.expires&&(r+=";expires="+n.expires.toUTCString()),n.path&&(r+=";path="+n.path),n.domain&&(r+=";domain="+n.domain),document.cookie=r},get:function(e){for(var t=document.cookie.split("; "),n=0;n<t.length;n++){var r=t[n].split("=");if(e==r[0])return r[1]}},remove:function(e){var t=new Date;t.setDate(t.getDate()-1),cookie.set(e,"",{expires:t})}};function css(){if(2==arguments.length)return arguments[0].style[arguments[1]];3==arguments.length&&(arguments[0].style[arguments[1]]=arguments[2])}function deepClone(e){var t=JSON.stringify(e);return JSON.parse(t)}function getStyle(e,t){return getComputedStyle(e,!1)?getComputedStyle(e,!1)[t]:e.currentStyle(t)}function startMove(o,i,a){clearInterval(o.timer),o.timer=setInterval(function(){var e=!0;for(var t in i){var n=0;n="opacity"==t?100*getStyle(o,t):parseInt(getStyle(o,t));var r=(i[t]-n)/6;r=0<r?Math.ceil(r):Math.floor(r),e=n==i[t],"opacity"==t?(o.style.opacity=(n+r)/100,o.style.filter="alpha(opacity:"+(n+r)+")"):o.style[t]=n+r+"px"}e&&(clearInterval(o.timer),a&&a())},30)}function lunbo(e,t){var n=getid(e),r=n.getElementsByClassName("ul")[0].getElementsByTagName("li"),o=r[0].offsetWidth,i=n.getElementsByClassName("light")[0].getElementsByTagName("span"),a=n.getElementsByClassName("prev")[0],l=n.getElementsByClassName("next")[0];console.log(o);for(var s=0;s<r.length;s++)css(r[s],"left",o+"px");css(r[0],"left",0);var u=0,c=null,f=function(){startMove(r[u],{left:-o}),u=++u>=r.length?0:u,css(r[u],"left",o+"px"),startMove(r[u],{left:0}),d()},d=function(){for(var e=0;e<i.length;e++)i[e].className="";i[u].className=t};c=setInterval(f,2e3),n.onmouseover=function(){clearInterval(c)},n.onmouseout=function(){clearInterval(c),c=setInterval(f,2e3)};var v=new Date;l.onclick=function(){500<new Date-v&&f(),v=new Date};a.onclick=function(){startMove(r[u],{left:o}),u=--u<0?r.length-1:u,css(r[u],"left",-o+"px"),startMove(r[u],{left:0}),d()};for(s=0;s<i.length;s++)i[s].index=s,i[s].onclick=function(){console.log(this.index),u<this.index&&(startMove(r[u],{left:-o}),css(r[this.index],"left",o+"px")),u>this.index&&(startMove(r[u],{left:o}),css(r[this.index],"left",-o+"px")),startMove(r[this.index],{left:0}),u=this.index,d()}}function ajax(e,t,n,r){var o=new XMLHttpRequest;"get"==e&&n&&(t=t+"?day="+new Date+"&"+n),o.open(e,t,!0),"get"==e?o.send(null):(o.setRequestHeader("content-type","application/x-www-form-urlencoded"),o.send(n)),o.onreadystatechange=function(){4==o.readyState&&(200==o.status?r&&r(o.responseText):alert("出错了，因为："+o.status))}}function getDateStr(e){var t=new Date(1e3*e);return t.getFullYear()+"-"+(t.getMonth()+1)+"-"+t.getDate()+"  "+(t.getHours()<10?"0"+t.getHours():t.getHours())+":"+(t.getMinutes()<10?"0"+t.getMinutes():t.getMinutes())+":"+(t.getSeconds()<10?"0"+t.getSeconds():t.getSeconds())}function setCookie(e,t,n){var r=new Date;r.setDate(r.getDate()+n),document.cookie=e+"="+t+";expires="+r}function getCookie(e){var t=document.cookie.split("; "),n=!0,r=!1,o=void 0;try{for(var i,a=t[Symbol.iterator]();!(n=(i=a.next()).done);n=!0){var l=i.value.split("=");if(e==l[0])return l[1]}}catch(e){r=!0,o=e}finally{try{!n&&a.return&&a.return()}finally{if(r)throw o}}}function removeCookie(e){setCookie(e,"",-1)}