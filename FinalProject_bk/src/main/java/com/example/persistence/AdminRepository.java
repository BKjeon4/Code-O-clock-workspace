package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.domain.AdminVO;

public interface AdminRepository  extends JpaRepository<AdminVO, String> {

	//관리자 로그인
	AdminVO findByAdIdAndAdPass(String adId, String adPass);

	// 아이디 중복 체크
	Integer countByAdId(String adId);
}
