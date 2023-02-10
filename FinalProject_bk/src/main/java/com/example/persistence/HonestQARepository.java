package com.example.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.domain.HonestQuestionVO;

public interface HonestQARepository extends JpaRepository<HonestQuestionVO, Integer> {
	
	@Query(value="SELECT hq.hq_title as hq_title, m.m_idstring as m_idstring, m.m_profile as m_profile FROM honest_question hq LEFT OUTER JOIN member m ON hq.m_idint = m.m_idint", nativeQuery=true)
	List<Map<String, Object>> getHonestQuestionList();
	
}
