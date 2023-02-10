package com.example.service;

import com.example.domain.AdminVO;

public interface AdminService {

	// 회원가입
	void insertAdmin(AdminVO vo);

	// 로그인
	public AdminVO loginAdmin(AdminVO vo);  

	// id 중복 체크
	public int adIdCheck(String adId);
}
