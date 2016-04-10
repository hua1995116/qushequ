$(document).ready(function(){
	NProgress.configure({
         template: $('#splash-template').html()
     });
	NProgress.start();
})
window.onload= function(){
	NProgress.done(); 
}