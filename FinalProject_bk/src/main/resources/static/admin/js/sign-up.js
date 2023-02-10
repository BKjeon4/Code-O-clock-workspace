// 1. 아이디 중복 체크 (조건 KeyPress?)
	// 아래나 input 안에 빨간 글씨로 아이디가 중복된다고 알림
	
// 2. 비밀번호1과 비밀번호2 서로 일치할 때만 넘어가도록 설정 (빨간 글씨)

// 3. 카카오 주소 API



$(document).ready(function() {

	//회원가입시 아이디 유효성 검사

	$('#adId').keyup(function() {	//keyup -> 버튼을 누를때만 하는게 아니라 글자 하나하나 바뀔 때 마다 극적인 효과는 나오지만 매번 DB와 비교해서 왔다갔다 하기 때문에  선호되지는 않음
		
		$('#chkNotice').html('');

		let ad_id = $('#adId').val();
		let adIdCheck = /^[a-z0-9]{4,12}$/




		if (!adIdCheck.test(adId)) {
			$("#chkNotice").html('4~12자의 영문 소문자와 숫자만 사용 가능합니다.<br><br>')
			$("#chkNotice").css('color', '#dc3545');
			$('#adId').focus()
			return false
		}


		//아이디 중복 확인        

		$.ajax({
			url: "./adIdCheck",	//Controller의 RequestMapping 과 맞춰야함
			type: "post",
			data: { adId: ad_id }, //위에 선언한 변수 memIdString<-(#m_idstring)를 Controller 의 memIdCheck 의 parameter(인자) 값인 memIdString 로 해서 보내 줌
			dataType: 'json',
			success: function(result) {
//				alert(adId + ", "+ result);
				if (result == 1) {
					$("#chkNotice").html('누군가 이 아이디를 사용하고 있습니다. <br><br>');
					$("#chkNotice").css('color', '#dc3545');
				} else {
					$("#chkNotice").html('사용가능한 아이디 입니다. <br><br>');
					$("#chkNotice").css('color', '#2fb380');
				}
			},
			error: function() {

				alert("서버요청실패");
			}
		}); // end of ajax


	});  //end of ID keyup


	$('#adPass').keyup(function() {

		//회원가입시 비밀번호 유효성 검사


		$('#chkNotice2').html('');

		let adPw = $('#adPass').val();
		let adPwchk = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,16}$/


		if (!adPwchk.test(adPw)) {
			$("#chkNotice2").html('8~16자 영문 대 소문자, 숫자를 사용하세요.<br><br>')
			$("#chkNotice2").css('color', '#dc3545');
			$('#adPass').focus()
			return false
		}


	}); // end of Pw keyup

	//비밀번호 일치 여부 

	$('#adPass_ck').keyup(function() {


		if ($('#adPass').val() != $('#adPass_ck').val()) {
			$('#chkNotice3').html('비밀번호가 일치하지 않습니다.<br><br>');
			$('#chkNotice3').css('color', '#dc3545');
		} else {
			$('#chkNotice3').html('비밀번호가 일치합니다. <br><br>');
			$('#chkNotice3').css('color', '#2fb380');
		}

	}); //end of mPwchk keyup




	//회원가입시 전화번호 유효성 검사
	$('#adTel').keyup(function() {

		$('#chkNotice5').html('');

		let adPhone = $('#adTel').val();
		let adPhoneCheck = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/

		if (!adPhoneCheck.test(adPhone)) {
			$("#chkNotice5").html('(-)을 포함해 입력해 주세요.<br><br>')
			$("#chkNotice5").css('color', '#dc3545');
			$('#adTel').focus()
			return false
		}

	}); //end of mPhone keyup




	//회원가입시 이메일 유효성 검사
	$('#adEmail').keyup(function() {


		$('#chkNotice6').html('');

		let adEmail = $('#adEmail').val();
		let adEailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if (!adEailCheck.test(adEmail)) {
			$("#chkNotice6").html('이메일 형식에 맞게 입력해 주세요.')
			$("#chkNotice6").css('color', '#dc3545');
			$('#adEmail').focus()
			return false
		}
	}); //end of mEmail keyup




}); //end of function  
