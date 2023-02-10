package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.HonestQuestionVO;

public interface HonestQAService {

	// 솔직 질문 등록하기
	void insertHQ(HonestQuestionVO vo);
	
	// 솔직 질문 목록 띄우기
	List<Map<String, Object>> getHonestQuestionList();
	
}
