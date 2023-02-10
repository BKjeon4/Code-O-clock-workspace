package com.example.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface MyPageService {
	
	// 선생님 수업함
	Page<Map<String, Object>> getTutorBox(Pageable paging, Integer teacherId);

}
