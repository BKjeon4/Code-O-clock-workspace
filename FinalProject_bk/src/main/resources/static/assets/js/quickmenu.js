
//퀵메뉴용
$(document).ready(function(){
   //스크롤이벤트
  var currentPosition = parseInt($(".quickmenu").css("top"));
    $(window).scroll(function() {
   //속도애니메이트 
   var position = $(window).scrollTop(); 
      $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},500);
      
      
         
      //퀵메뉴 클릭시 채팅방 오픈
      
   $(function(){
      
   
      // 버튼이 눌렸을 때
      $('#quickmenu2').on('click',function(){
      
         //alert($('#memberId').val());
      
       //세션스코프 벨류값 url에 추가해서 다른포트번호로 채팅방 띄우는것입니다.
         var url = 'http://192.168.0.48:5000/?id=' + $('#memberId').val();
         window.open(url,'width=260', 'height=120');
         
        
      });
      
      
   });

   
      
  });
});
