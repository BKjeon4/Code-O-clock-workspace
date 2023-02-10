package com.example.service;

import java.util.List;

import com.example.domain.TeacherVO;

public interface TeacherService {

	
	
	 public void insertTeacher(TeacherVO tvo);
	 
	 public List<TeacherVO> AllTeacher();
	 
	 public void updateTeacher(TeacherVO tvo);
}
