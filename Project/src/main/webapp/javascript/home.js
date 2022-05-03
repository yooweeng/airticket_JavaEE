/**
 * 
 */
 
let navi = document.getElementById("navi");
let cloud = document.getElementById("cloud");
let plane = document.getElementById("plane");
let sky = document.getElementById("sky");
let pName = document.getElementById("p-name");

window.addEventListener('scroll', function() {
	var value = window.scrollY;
	
	navi.style.background = 'rgba(255,255,255,'+0.002*value+')';
	sky.style.top = -20 + value * 0.4 + 'px';
	plane.style.left = -value * 0.5 + 'px';
	cloud.style.top = value * 0.5 + 'px';
	pName.style.top = -80+ value * 1 + 'px';
})