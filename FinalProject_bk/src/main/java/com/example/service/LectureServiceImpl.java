package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.LectureVO;
import com.example.persistence.LectureRepository;

@Service
public class LectureServiceImpl implements LectureService {
	
	@Autowired
	   private LectureRepository lecRepo;

	@Override
	public List<LectureVO> getBoardList(LectureVO vo) {
		 List<LectureVO> list = (List<LectureVO>) lecRepo.findAll();
	      System.out.println(list);
	      return list;
	}

	@Override
	public LectureVO getBoard(LectureVO vo) {
	      return lecRepo.findById(vo.getVcId()).get();

	}

	/*** 관리자 페이지 ***/
   //상품전체 조회
   public List<LectureVO> lectureList(){
      return (List<LectureVO>) lecRepo.findAll();
   };
	
}
