package com.example.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.WishListVO;
import com.example.persistence.JjimRepository;
import com.example.persistence.WishListRepository;

@Service
public class WishListServiceImpl implements WishListService {

	@Autowired
	private WishListRepository wishRepo;
	
	@Autowired
	private JjimRepository jjimRepo;

	/*
	//위시리스트 추가
	// 클라이언트에서 넘어오는 파라미터
	//	String memId : MemberVO 
	//  Integer edId : EducationVO
	public void wishInsert(MemberVO mvo, EducationVO evo) {
		WishListVO wvo = new WishListVO();
		wvo.setMemId(mvo);
		wvo.setEdId(evo);


		wishRepo.save(wvo);
	};
	 */
	//위시리스트 추가
	public void insertWish(Integer memIdInt, Integer edId) {
		wishRepo.insertWish(memIdInt, edId);
	};


	//위시리스트 목록(교육과정)
	public List<Object[]> getWishList(Integer mIdInt){

		List<Object[]> list = wishRepo.findByMemIdInt(mIdInt);

		return list;
	};

	//위시리스트 목록(강의)
	public List<Object[]> getWishListlec(Integer mIdInt){
		List<Object[]> list = jjimRepo.findByMemIdIntlec(mIdInt);

		return list;
	};

	//위시리스트 삭제
	public void deleteWish(Integer memIdInt, Integer wId){
		wishRepo.deleteWish(memIdInt, wId);
	};

	public WishListVO getWish(Integer memIdInt, Integer edId) {
		//optional에서 값만 가져와야해서 get써줌

		return wishRepo.getWish(memIdInt, edId);
	};


	//찜리스트 추가
	public void insertJjim(Integer memIdInt, Integer vcId) {
		jjimRepo.insertJjim(memIdInt, vcId);
	};

	//찜리스트 삭제
	public void deleteJjim(Integer memIdInt, Integer jjId){
		jjimRepo.deleteJjim(memIdInt, jjId);
	};


}
