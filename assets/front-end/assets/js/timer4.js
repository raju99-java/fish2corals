function getTimeRemaining(e){var n=Date.parse(e)-Date.parse(new Date);return{total:n,days:Math.floor(n/864e5),hours:Math.floor(n/36e5%24),minutes:Math.floor(n/1e3/60%60),seconds:Math.floor(n/1e3%60)}}function initializeClock(e,n){var $=document.getElementById(e),i=$.querySelector(".days"),r=$.querySelector(".hours"),o=$.querySelector(".minutes"),l=$.querySelector(".seconds");function s(){var e=getTimeRemaining(n);i.innerHTML=e.days,r.innerHTML=("0"+e.hours).slice(-2),o.innerHTML=("0"+e.minutes).slice(-2),l.innerHTML=("0"+e.seconds).slice(-2),e.total<=0&&clearInterval(t)}s();var t=setInterval(s,1e3)}var deadline=new Date(Date.parse(new Date)+1296e6);initializeClock("clockdiv-4",deadline);