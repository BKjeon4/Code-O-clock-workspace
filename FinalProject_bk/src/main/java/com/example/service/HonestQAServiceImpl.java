package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.HonestQuestionVO;
import com.example.persistence.HonestQARepository;

@Service
public class HonestQAServiceImpl implements HonestQAService {
	
	@Autowired
	HonestQARepository honestQARepository;

	// 솔직 질문 등록하기
	@Override
	public void insertHQ(HonestQuestionVO vo) {
		honestQARepository.save(vo);
	}

	// 솔직 질문 목록 띄우기
	@Override
	public List<Map<String, Object>> getHonestQuestionList() {
		return honestQARepository.getHonestQuestionList();
	}
	
	
	
}
