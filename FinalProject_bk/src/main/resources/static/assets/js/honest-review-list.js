// textarea의 스크롤바를 없애고 늘리기

function adjustHeight() {
  var textEle = $('textarea');
  textEle[0].style.height = 'auto';
  var textEleHeight = textEle.prop('scrollHeight');
  textEle.css('height', textEleHeight);
};

var textEle = $('textarea');
textEle.on('keyup', function() {
  adjustHeight();		// 함수를 실행하면 자동으로 textarea의 높이 조절
});

//---------------------------------------------------------------------------
// 키워드 선택 이벤트

// 키워드 객체
let div2 = $("div.div2");

// 선택된 키워드를 담을 input
let hqk = $("#hq_cat");

// 키워드를 클릭 시
div2.click(function(){
	
	// class에 "clicked"가 있으면 class에서 "clicked"을 제거하고 hqk의 value를 비운다.
	if($(this).hasClass("clicked")) {
		$(this).removeClass("clicked")
		hqk.val("")
	// class에 "clicked"가 없으면 class에서 "clicked"을 추가하고 hqk의 value에 키워드를 넣는다.
	} else {
		div2.removeClass("clicked")
		$(this).addClass("clicked")
		hqk.val($(this).html())
	}

});

//---------------------------------------------------------------------------
// 키워드 선택 이벤트

$("input#hq_keyIn").on("keydown",function(key){
	if(key.keyCode==13) {
		
		// enter 눌렀을 때 form의 submit가 실행되지 않도록 조치
		key.preventDefault();
		
		let keyw = $(this).val();
		$("div#keyword_show").append('<span class="keyw_out">  #'+keyw+'  </span>');
		
		if($("#hq_keyOut").val()==="") {
			$("#hq_keyOut").val("#" + keyw);
		} else {
			$("#hq_keyOut").appendVal("/#" + keyw);
		}
		
		$(this).val("");
		
	}
});

 $.fn.appendVal = function (newPart) {
   return this.each(function(){ $(this).val( $(this).val() + newPart); });
 };
