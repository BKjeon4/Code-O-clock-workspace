package com.example.service;


import java.util.List;

import com.example.domain.MemberVO;
import com.example.domain.WishListVO;

public interface WishListService {
	//	public int findLike(Integer edId, String memId);
	//	public int saveLike(Integer edId, String memId);

	//위시리스트 추가
	public void insertWish(Integer memIdInt, Integer edId);

	//찜리스트 추가
	public void insertJjim(Integer memIdInt, Integer vcId);

	//위시리스트 목록(교육과정)
	public List<Object[]> getWishList(Integer mIdInt);

	//찜리스트 목록(강의)
	public List<Object[]> getWishListlec(Integer mIdInt);

	//위시리스트 삭제
	public void deleteWish(Integer memIdInt, Integer wId);
	
	//찜리스트 삭제
	public void deleteJjim(Integer memIdInt, Integer jjId);

	public WishListVO getWish(Integer memIdInt, Integer edId) ;







}
