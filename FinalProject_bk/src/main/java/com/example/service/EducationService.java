package com.example.service;

import java.util.List;

import com.example.domain.EducationVO;

public interface EducationService {
   List<EducationVO> getBoardList(EducationVO vo);
//   void saveBoard(EducationVO vo);
   EducationVO getBoard(EducationVO vo);

//   void updateBoard(EducationVO vo);
   
   //경호
   /*** 관리자 페이지 ***/
   //상품전체 조회
   List<EducationVO> selectAllAcademy();
   
   
   //경호
   //교육과정 삭제
   void deleteAcademy(EducationVO vo);
   
   
   //찬주
   //교육등록
   void insertEducation(EducationVO vo);
   
   
   
   //찬주어드민 국비/부트 리스트 가져오기
   public List<EducationVO> AllEducation();
   
   
   //국비/부트에서 승인여부 0 1주기 위함
   public void updateEducation(EducationVO evo);
   
   //검색어 넣기
   public void insertSearch(String keywords, Integer mIdInt);
   

}