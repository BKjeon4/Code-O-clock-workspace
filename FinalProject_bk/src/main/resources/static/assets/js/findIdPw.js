$(function() {
	$("#findPw").click(function() {
		var param = $('#pwForm').serialize();
		console.log(param);

		$.ajax({
			type: 'post',
			url: 'findPw',
			data: param,
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			async: false,
			success: function(result) {
				Swal.fire({
//					icon: 'error',
//					title: "임시비밀번호 발송 완료",
					text: result,
				});
			},
			error: function(err) {
				Swal.fire({
					icon: 'error',
					title: "서비스 이용불가",
					text: "이용에 불변을 드려 죄송합니다.",
				})
				console.log(err);
			}
		})
		return false;	//return 을 false 로 주지 않을 시, 계속 리다이렉트가 되면서 sweet alert가 뜨지 않음
	})

	$("#findId").click(function() {
		$('idForm').submit();
		//var tel =$('#reg_pNum').value;
		var param = $('#idForm').serialize();
		//alert (param);
		console.log(param);

		$.ajax({
			type: 'post',
			url: 'findId',
			data: param,
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			async: false,
			success: function(result) {
				if (result != "0") {
					Swal.fire({
						icon: 'success',
						text: "회원님의 아이디는  " + result + "  입니다.",
						footer: '<a href="sign-in">로그인 하러 가기</a>'
					})
				} else {
					Swal.fire("일치하는 회원 정보가 없습니다.");
				}
			},
			error: function(err) {
				Swal.fire({
					icon: 'error',
					title: "서비스 이용불가",
					text: "이용에 불변을 드려 죄송합니다.",
				})
				console.log(err);
			}
		})
	})
})