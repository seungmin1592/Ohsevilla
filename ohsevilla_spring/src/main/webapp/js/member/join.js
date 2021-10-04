'use strict';

$(document).ready(function(){

    // 약관 동의 내용보기
    $('.more_btn').click(function(){
        if($(this).hasClass('open')){
            $(this).removeClass('open')
        } else { 
            $(this).addClass('open');
        }
    });
    
	// 약관 전체 동의
    $('#check_all').click(function(){
        var check = $('#check_all').is(":checked");

        if(check) {
            $('.agree_section input[type="checkbox"]').prop('checked',true)
        } else {
            $('.agree_section input[type="checkbox"]').prop('checked',false)
        }
    });
        
    
    
    
});
