//날짜부분 출력을 데이터타입 포맷시킨 버전으로 바뀌었는데 페이징시 뒷부분 확인이아직 안되니
//확인해 보고나서 다시 수정하던가하자

//   d+= " <span>" + value.reDate + "</span>"; 원본모드

$(document).ready(function () {
    
    
    //1. 국비/부트에서
    //글등록 버튼 아이디
    $("#btn-e").click(function(){
     // alert("글등록 ")
     
     let idOrNot = $('#memIdInt').val();
     
     console.log("idOrNot : "+idOrNot)
     
     if(idOrNot === '') {
		 alert('로그인해야 이용할 수 있는 페이지입니다.');
	 } else {
		var param = $("#cmtfrm").serializeObject();
      console.log(param);
      
      var d="";
      
      $.ajax({
         url : 'insertRV',
         type: 'get',
         data : param,
         dataType: "json",
         
         success : function(data){
           
            console.log(data);
            
            //화면 깔끔히 할라고 입력값을 초기화
            
            $('#star').val('');
            $('#text').val('');
            
            $("#reviewBox").empty();
   
         var c = "";
         
         c+="<div class='course__comment mb-75'>";
         c+=" <h3>리뷰확인</h3>";
         $.each(data, function(key, value){
            d+= "<ul>";
            d+= "<li>";
            d+= "<div class='course__comment-box '>";
            d+= " <div class='course__comment-thumb float-start'>";
            d+= "</div>";
            d+= "<div class='course__comment-content'>";
            d+= "<div class='course__comment-wrapper ml-70 fix'>";
            d+= "<div class='course__comment-info float-start'>";
            d+= "<h4>" + value.memIdString + "</h4>";
            d+= "</div>";
           

            d+= "<div class='course__comment-rating float-start float-sm-end'>";
            d+= "<tr>";
            d+= " <td>" + value.star + "";
            if(value.star==1){
               d+= " <img src='../assets/img/star/1s.png'>";
            }
            if(value.star==2){
               d+= " <img src='../assets/img/star/2s.png'>";
            }
            if(value.star==3){
               d+= " <img src='../assets/img/star/3s.png'>";
            }
            if(value.star==4){
               d+= " <img src='../assets/img/star/4s.png'>";
            }
            if(value.star==5){
               d+= " <img src='../assets/img/star/5s.png'>";
            }
            
            d+= " </td>";
            d+= " </tr>";
            d+= " </div>";
            d+= " </div>";
            d+= " <div class='course__comment-text ml-70'>";
            d+= " <p>" + value.reContent + "</p>";
            d+= " </div>";
            d+= " </div>";
            d+= "  </li>";
            d+= " </ul>";
             c += d;
                 d = "";
            
         });
         
         c+= " </div> ";
         
            
         $("#reviewBox").append(c);      

         },
         error : function(e){
            console.log(e);
         }
   
      })//end of aJax
      
	 }
      
   })//end of click
   
   

  	
  	 //2.국비부트에서
  	 //리뷰 ajax로  페이징
     $(".ajaxBtn").click(function(){
		
		 
		 //파라미터로 edId 로 우리가 무슨 학원인지 알수있고
		 //this로 page 파라미터 넘겼으니 이름 맞퉈서 2개만 맞춰주면 끝
		var param = { 'vcId' : $('#vcId').val(),
					'page' : $(this).find('span').text() };
    	console.log(param);
    	 var d="";
		 
		 
		 $.ajax({
			 
			 url : 'insertRVPajing',
         	type: 'get',
         	data : param,
         	dataType: "json",
         	success : function(data){
          
            console.log(data);
            
             
            $("#reviewBox").empty();
            
             var c = "";
         
         c+="<div class='course__comment mb-75'>";
         c+=" <h3>리뷰확인</h3>";
         $.each(data, function(key, value){
            d+= "<ul>";
            d+= "<li>";
            d+= "<div class='course__comment-box '>";
            d+= " <div class='course__comment-thumb float-start'>";
            d+= "</div>";
            d+= "<div class='course__comment-content'>";
            d+= "<div class='course__comment-wrapper ml-70 fix'>";
            d+= "<div class='course__comment-info float-start'>";
            d+= "<h4>" + value.memIdString + "</h4>";
            d+= "</div>";
           
            d+= "<div class='course__comment-rating float-start float-sm-end'>";
            d+= "<tr>";
            d+= " <td>" + value.star + "";
            if(value.star==1){
               d+= " <img src='../assets/img/star/1s.png'>";
            }
            if(value.star==2){
               d+= " <img src='../assets/img/star/2s.png'>";
            }
            if(value.star==3){
               d+= " <img src='../assets/img/star/3s.png'>";
            }
            if(value.star==4){
               d+= " <img src='../assets/img/star/4s.png'>";
            }
            if(value.star==5){
               d+= " <img src='../assets/img/star/5s.png'>";
            }
            
            d+= " </td>";
            d+= " </tr>";
            d+= " </div>";
            d+= " </div>";
            d+= " <div class='course__comment-text ml-70'>";
            d+= " <p>" + value.reContent + "</p>";
            d+= " </div>";
            d+= " </div>";
            d+= "  </li>";
            d+= " </ul>";
             c += d;
                 d = "";
            
         });
         
         c+= " </div> ";
     
         $("#reviewBox").append(c);      
            
            
         	}
         
		 })//ajax
	 })
	 
	 
	 //3.국비부트에서
  	 //리뷰 ajax로  페이징
     $(".ajaxBtn").click(function(){
		
		 
		 //파라미터로 edId 로 우리가 무슨 학원인지 알수있고
		 //this로 page 파라미터 넘겼으니 이름 맞퉈서 2개만 맞춰주면 끝
		var param = { 'edId' : $('#edId').val(),
					'page' : $(this).find('span').text() };
    	console.log(param);
    	 var d="";
		 
		 
		 $.ajax({
			 
			 url : 'insertRVPajing',
         	type: 'get',
         	data : param,
         	dataType: "json",
         	success : function(data){
          
            console.log(data);
            
             
            $("#reviewBox").empty();
            
             var c = "";
         
         c+="<div class='course__comment mb-75'>";
         c+=" <h3>리뷰확인</h3>";
         $.each(data, function(key, value){
            d+= "<ul>";
            d+= "<li>";
            d+= "<div class='course__comment-box '>";
            d+= " <div class='course__comment-thumb float-start'>";
            d+= "</div>";
            d+= "<div class='course__comment-content'>";
            d+= "<div class='course__comment-wrapper ml-70 fix'>";
            d+= "<div class='course__comment-info float-start'>";
            d+= "<h4>" + value.memIdString + "</h4>";
            d+= "</div>";
           
            d+= "<div class='course__comment-rating float-start float-sm-end'>";
            d+= "<tr>";
            d+= " <td>" + value.star + "";
            if(value.star==1){
               d+= " <img src='../assets/img/star/1s.png'>";
            }
            if(value.star==2){
               d+= " <img src='../assets/img/star/2s.png'>";
            }
            if(value.star==3){
               d+= " <img src='../assets/img/star/3s.png'>";
            }
            if(value.star==4){
               d+= " <img src='../assets/img/star/4s.png'>";
            }
            if(value.star==5){
               d+= " <img src='../assets/img/star/5s.png'>";
            }
            
            d+= " </td>";
            d+= " </tr>";
            d+= " </div>";
            d+= " </div>";
            d+= " <div class='course__comment-text ml-70'>";
            d+= " <p>" + value.reContent + "</p>";
            d+= " </div>";
            d+= " </div>";
            d+= "  </li>";
            d+= " </ul>";
             c += d;
                 d = "";
            
         });
         
         c+= " </div> ";
     
         $("#reviewBox").append(c);      
            
            
         	}
         
		 })//ajax
	 })


 
   
   

   

//----------------------------------------------------------------------------------------------------
   // serialize된 파라미터를 json화 하는 함수
   jQuery.fn.serializeObject = function() {
    var obj = null;
    try {
        if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
            var arr = this.serializeArray();
            if (arr) {
                obj = {};
                jQuery.each(arr, function() {
                    obj[this.name] = this.value;
                });
            }//if ( arr ) {
        }
    } catch (e) {
        alert(e.message);
    } finally {
    }
 
    return obj;
	};
//----------------------------------------------------------------------------------------------------

	// 강의 예약하기 버튼 눌렀을 때
	$('#schedule-btn').click(function(e){
		
		let idOrNot = $('#memIdInt').val();
	     
		if(idOrNot === '') {
			//e.preventdefault()
			alert('로그인해야 이용할 수 있는 페이지입니다.');
			location.href="/sign-in"
		} else {
			let teachid = $('#teachid').val();
			let vcId = $('#vcId').val();
			
			location.href = `calendar?tId=${teachid}&vcId=${vcId}`;
		}
		 
	});
   
   
   
   
   
   
   
})//end of main