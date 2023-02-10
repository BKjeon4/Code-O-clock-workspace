package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.EducationVO;
import com.example.persistence.EducationRepository;
import com.example.persistence.SearchRepository;

@Service
public class EducationServiceImpl implements EducationService {
   
   @Autowired
   private EducationRepository eduRepo;
   
   @Autowired
   private SearchRepository searchRepo;

   @Override
   public List<EducationVO> getBoardList(EducationVO vo) {
      List<EducationVO> list = (List<EducationVO>) eduRepo.findAll();
      System.out.println(list);
      return list;
   }

   @Override
   public EducationVO getBoard(EducationVO vo) {
      return eduRepo.findById(vo.getEdId()).get();
   }
   
   //경호
   //관리자페이지
   //교육과정 전체 조회
   public List<EducationVO> selectAllAcademy() {
      return (List<EducationVO>) eduRepo.findAll();
   }
   
   //경호
   //관리자페이지
   //교육과정 삭제
   public void deleteAcademy(EducationVO vo) {
    eduRepo.deleteById(vo.getEdId());
   };
   
   
   
   //찬주
   //교육과정등록
   public void insertEducation(EducationVO vo) {
	   eduRepo.save(vo);
   }
   
   

	//찬주 국비/부트 가져오기
	public List<EducationVO> AllEducation(){
		return (List<EducationVO>) eduRepo.findAll();
	}
   
	//국비/부트에서 승인여부 0 1주기 위함
	public void updateEducation(EducationVO evo) {
		
		eduRepo.save(evo);
	}
	
	//검색어 넣기
	public void insertSearch(String keywords, Integer mIdInt) {
		searchRepo.insertSearch(keywords, mIdInt);
	}
 
}