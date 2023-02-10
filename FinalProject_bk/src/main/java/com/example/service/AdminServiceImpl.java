package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.AdminVO;
import com.example.persistence.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminRepository adminRepo;

	// 회원가입
	@Override
	public void insertAdmin(AdminVO vo) {
		System.out.println(vo.getAdId());
		adminRepo.save(vo);
	}

	// 로그인
	@Override
	public AdminVO loginAdmin(AdminVO vo) {
		System.out.println("adId : "+ vo.getAdId() );
		System.out.println("adPass : "+ vo.getAdPass() );
		AdminVO result = adminRepo.findByAdIdAndAdPass(vo.getAdId(), vo.getAdPass());
		return result;
	};  

	// id 중복 체크
	@Override
	public int adIdCheck(String adId) {
		System.out.println(adId);
		int result = adminRepo.countByAdId(adId);
		System.out.println(result);
		return result;
	};
}
