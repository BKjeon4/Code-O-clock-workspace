//heart 좋아요 클릭시! 하트 뿅
$(document).ready(function () {
    var $likeBtn =$('.icon.heart');
     let likeVal = $('#like_check').val();
        const boardId = $("#boardId").val();
        const memberId = $("#memberId").val();
        console.log(memberId);
        console.log(likeVal);
        //const likeImg = document.getElementById("likeBtn")

        $likeBtn.on("click", function(){
        $likeBtn.toggleClass('active');
           $.ajax({
            url: '/academy/wish',
                type: 'POST',
                data: {'해당 학원번호': boardId, '해당사용자번호': memberId},
            
         })

        if($likeBtn.hasClass('active')){          
           $(this).find('img').attr({
              'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
               alt:'찜하기 완료'
                });
          
          
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
              alt:"찜하기"
           })
         }
     })
})