package com.example.service;

import java.util.List;

import com.example.domain.AnnouncementVO;

public interface AnnouncementService  {
	
	//고객페이지 전체 공지띄우기
	List<AnnouncementVO> getAnnouncementList(AnnouncementVO vo);
	
	//고객페이지 상세공지띄우기
	AnnouncementVO getAnnouncement(AnnouncementVO vo);
	
	//관리자페이지에 전체 공지띄우기
	List<AnnouncementVO> selectAllAnnouncement();
	
	//공지작성하기
	public void announcementInsert(AnnouncementVO vo);
	
	//관리자페이지에서 공지삭제하기
	void announcementDelete(AnnouncementVO vo);
	
	//관리자페이지에서 공지수정하기
	void announcementUpdate(AnnouncementVO vo);
	
}
