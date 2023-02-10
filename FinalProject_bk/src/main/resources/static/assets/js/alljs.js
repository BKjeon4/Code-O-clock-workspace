

//선생등록시 간단유효성 검사
function teacherInsert(){
		
	var name = $("#tcName").val();
	var tcSpec = $("#tcSpec").val();
	var tcKeyword = $("#tcKeyword").val();
	var tcIntro = $("#tcIntro").val();
	var tcPic = $("#tcPic").val();
	

	
	if(name==""){
		alert("강사 이름을 반드시 입력해 주세요")
		name.focus();
	}else if(tcSpec==""){
		alert("강사 경력을 반드시 입력해 주세요")
		tcSpec.focus();
	}else if(tcKeyword==""){
		alert("수업 키워드를 반드시 입력해 주세요")
		tcKeyword.focus();
	}
		
	
	$("#teacherForm").submit();
	
	alert("등록이 완료되셨습니다 회원 정보 관리에서 확인해주세요.")
	
	
	
}

//학원등록시 간단 유효성검사
function eduInsert(){
	var edName = $("#edName").val();
	var edTitle = $("#edTitle").val();
	var edKeyword = $("#edKeyword").val();
	

	
	if(edName==""){
		alert("학원 이름을 반드시 입력해 주세요")
		edName.focus();
	}else if(edTitle==""){
		alert("교육과정명을 반드시 입력해 주세요")
		edTitle.focus();
	}else if(edKeyword==""){
		alert("수업키워드을 반드시 입력해 주세요")
		edKeyword.focus();
	}
	
	$("#aduForm").submit();
	
	alert("등록이 완료되셨습니다 회원 정보 관리에서 확인해주세요.")
}


	
	
//선생님 등록 승인여부용1	
function teacherBtn(){
	
	$("#tcTruefalse").val(1);
	
	$("#upForm").submit();
	
	
}
//선생님 등록 승인여부용2
function teacherBtn2(){
	
	$("#tcTruefalse").val(0);
	
	$("#upForm").submit();
	
}



	
//국비/부트 등록 승인여부용1	
function eduBtn(){
	
	$("#edTf").val(1);
	
	$("#upEduForm").submit();
	
	
}
//국비/부트 등록 승인여부용2
function eduBtn2(){
	
	$("#edTf").val(0);
	
	$("#upEduForm").submit();
	
}











