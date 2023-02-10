package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.AnnouncementVO;
import com.example.persistence.AnnouncementRepository;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {
	
	@Autowired
	private AnnouncementRepository AnnoRepo;
	
	//고객페이지 전체공지띄우기
	@Override
	public List<AnnouncementVO> getAnnouncementList(AnnouncementVO vo){
		List<AnnouncementVO> list = (List<AnnouncementVO>) AnnoRepo.findAll();
		return list;
	}
	
	//고객페이지 상세공지띄우기
	@Override
	public AnnouncementVO getAnnouncement(AnnouncementVO vo) {
		return AnnoRepo.findById(vo.getAnId()).get();
	}
	
	//관리자페이지 전체공지띄우기
	public List<AnnouncementVO> selectAllAnnouncement(){
		return (List<AnnouncementVO>) AnnoRepo.findAll();
	}
	
	//관리자페이지 공지등록
	public void announcementInsert(AnnouncementVO vo) {
		AnnoRepo.save(vo);
	}
	
	//관리자페이지 공지 삭제하기
	public void announcementDelete(AnnouncementVO vo) {
		AnnoRepo.deleteById(vo.getAnId());
	}
	
	//관리자페이지 공지 수정하기
	public void announcementUpdate(AnnouncementVO vo) {
		AnnouncementVO result = AnnoRepo.findById(vo.getAnId()).get();
		result.setAnTitle(vo.getAnTitle());
		result.setAnContent(vo.getAnContent());
		
		AnnoRepo.save(result);
	}
	

}
