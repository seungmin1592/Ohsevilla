$(function(){
  
  var sw = 0;
	$('.infor span').click(function(){
		if(sw == 0){
			$('.more_infor').stop().slideDown();
			sw = 1;
		} else if( sw == 1){
		$('.more_infor').stop().slideUp();
		sw = 0;
		}
	});
	




}); // ready fnc