 /**=====================
     OTP js
==========================**/
document.addEventListener("DOMContentLoaded",function(e){!function e(){let t=document.querySelectorAll("#otp > *[id]");for(let n=0;n<t.length;n++)t[n].addEventListener("keydown",function(e){if("Backspace"===e.key)t[n].value="",0!==n&&t[n-1].focus();else{if(n===t.length-1&&""!==t[n].value)return!0;e.keyCode>47&&e.keyCode<58?(t[n].value=e.key,n!==t.length-1&&t[n+1].focus(),e.preventDefault()):e.keyCode>64&&e.keyCode<91&&(t[n].value=String.fromCharCode(e.keyCode),n!==t.length-1&&t[n+1].focus(),e.preventDefault())}})}()});