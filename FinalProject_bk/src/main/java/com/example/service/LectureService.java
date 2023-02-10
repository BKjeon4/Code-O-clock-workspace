package com.example.service;

import java.util.List;

import com.example.domain.LectureVO;

public interface LectureService {
	List<LectureVO> getBoardList(LectureVO vo);
	//   void saveBoard(EducationVO vo);
	LectureVO getBoard(LectureVO vo);
	//   void deleteBoard(EducationVO vo);
	//   void updateBoard(EducationVO vo);
	
	/*** 관리자 페이지 ***/
   //상품전체 조회
   List<LectureVO> lectureList();

}
