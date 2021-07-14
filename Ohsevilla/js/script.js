'use strict';

$(function () {
  //메뉴 이동
  $('.logo').click(function () {
    location.href = 'index.html';
  });
  $('.nav li:nth-child(1)').click(function () {
    location.href = 'shop.html';
  });
  $('.nav li:nth-child(2)').click(function () {
    location.href = 'archive.html';
  });


  // 헤더 메뉴 슬라이드
  $('.header').mouseover(function () {
    $(this).addClass('on');
    $('.clothing').mouseover(function () {
      $('.clothing_menu').addClass('on');
      $('.header').addClass('sub_h', 'on')
    })
  });

  $('.header').mouseleave(function () {
    $(this).removeClass('on');
    $('.clothing').mouseleave(function () {
      $('.clothing_menu').removeClass('on');
      $('.header').removeClass('sub_h', 'on')
    })
  });


}); //ready fnc