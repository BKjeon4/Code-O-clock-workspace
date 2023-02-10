<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.domain.CalendarVO"%>

<!DOCTYPE html>
<html>
<head>

<meta charset='utf-8' />
<title>캘린더</title>
<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.min.js'></script>
<!-- sweet alert창 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

<!-- 캘린더용 css -->
<link rel="stylesheet" href="/assets/css/calendar.css">

<style>
/*Calendar api에 css */
/* body 스타일 */
html, body {
  overflow: hidden;
  font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
  font-size: 15px;
}
/* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
.fc-header-toolbar {
  padding-top: 1em;
  padding-left: 1em;
  padding-right: 1em;
  
}
</style>
</head>
<body style="padding:30px;">
<!-- calendar 태그 -->
<!-- calendar 호출 -->
<div id='calendar-container'>
  <div id='calendar'></div>
</div>



<!-- jQuery -->                              <!-- cdn(네트워크연결)방식으로 불러오는 것임 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>


<script type="text/javascript">

const urlParams = new URL(location.href).searchParams;
const vcId = urlParams.get('vcId');

//calendar
document.addEventListener('DOMContentLoaded', function() {
   //calendar 호출
 var calendarEl = document.getElementById('calendar');
 var calendar = new FullCalendar.Calendar(calendarEl, {
	initialView : 'dayGridMonth', //시작부분 월 기준으로 설정
	locale : 'ko', // 한국어 설정
	headerToolbar : {
		 left: 'prev,next today', //왼쪽부분에 이전달, 다음달, 오늘 설정
		  center: 'title',       // 가운데에 title 설정
		  end : 'dayGridMonth,timeGridWeek,listWeek'   // 오른쪽부분에 나올것 설정
		  },
		  height: '700px', // calendar 높이 설정
		 expandRows: true, // 화면에 맞게 높이 재설정
		 slotMinTime: '08:00', // Day 캘린더에서 시작 시간
		 slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
		 navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
		 nowIndicator: true, // 현재 시간 마크
	   	 selectable : true, // 선택가능 설정
	   	 droppable : true,  
	   	 //eventLimit : true, 
	   	 //backgroundColor: '#378006',
	   	 //display: 'background', 
	   	 events : [ 
				   <% List<CalendarVO> calendarList = (List<CalendarVO>) request.getAttribute("calendarList"); %>
					<% if (calendarList != null) {%>
					<% for (CalendarVO vo : calendarList) {%>
					{
					   id :'<%=vo.getCalId()%>',
					   title : '예약가능',
					   start : '<%=vo.getCalStart()%>',
					   end : '<%=vo.getCalEnd()%>'
					 },
			  <% }
		   } %>
			 	   ], // 달력에 나오는 일정들 db통해 설정
		 eventClick: function(test) {
			  Swal.fire({
				icon: 'success',
				text: test.event.start.getFullYear()+"년 "+test.event.start.getMonth()+1+"월 "+test.event.start.getDate()+"일 "+test.event.start.getHours()+"시 "+test.event.start.getMinutes()+"분의 강의를 예약하시겠습니까?",
				showCancelButton: true,
				focusConfirm: true,
				confirmButtonText: '결제',
				cancelButtonText: '취소'

			 }).then((result) => {
				if (result.isConfirmed) {
				   x(test.event.id, test.event.title, test.event.start, test.event.end);
				   // window.location.href="reservation?calId="+test.event.id+"&vcId="+vcId;
				}
			 })
		   
		 } // 이벤트 클릭시에 스윗알럿창 띄우고 컨트롤을 통해 예약설정
	   });
	   calendar.render();
	});
	
	
	IMP.init("imp58188004"); // 예: imp00000000

	
	var x = function(test_id, test_title, test_start, test_end){
	
		//alert( Math.trunc((Number(test_end) - Number(test_start))/1000/60/60) );
		  IMP.request_pay({
			 pg : 'danal_tpay',
			 pay_method : 'card', //생략 가능
			 merchant_uid: "CODE_O_CLOCK"+ new Date().getTime(), // 상점에서 관리하는 주문 번호 
			 name : test_title, // 상품이름 및 갯수
			 amount : Math.trunc((Number(test_end) - Number(test_start))/1000/60/60)*10000, //결제 금액 
			 buyer_email : 'support@kosmo.com', 
			 buyer_name : 'JBK', 
			 buyer_tel : '+00 111 222 3333',
			 buyer_addr : 'Seoul, Geumcheon-gu, Gasan digital 2-ro, 123 building2) 4th-floor (suite.413) World Meridian',
			 buyer_postcode : '123-456'
		  }, function(rsp) { 
			 if ( rsp.success ) {
			 var msg = '결제가 완료되었습니다.';
			 msg += '고유ID : ' + rsp.imp_uid;
			 msg += '상점 거래ID : ' + rsp.merchant_uid;
			 msg += '결제 금액 : ' + rsp.paid_amount;
			 msg += '카드 승인번호 : ' + rsp.apply_num;

			
		  	 window.location.href="reservation?calId="+test_id+"&vcId="+vcId;
		     
			 } 
		  });
	}
	   
	   


</script>
</body>
</html>