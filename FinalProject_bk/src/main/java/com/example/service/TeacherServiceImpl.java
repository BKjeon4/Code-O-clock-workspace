package com.example.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.AnnouncementVO;
import com.example.domain.TeacherVO;
import com.example.persistence.TeacherRepository;

@Service
public class TeacherServiceImpl implements TeacherService{


	@Autowired
	private TeacherRepository teacherRepository;



	//전체정보 얻기용 id로
	public TeacherVO findAll(TeacherVO tvo) {
		return  teacherRepository.findById(tvo.getTeacherId()).get();
	}



	//선생님등록
	public void insertTeacher(TeacherVO tvo) {
		teacherRepository.save(tvo);
	}


	//전체쌤 가져오기

	public List<TeacherVO> AllTeacher(){
		return (List<TeacherVO>) teacherRepository.findAll();
	}

	
	public void updateTeacher(TeacherVO tvo) {
		//TeacherVO result = teacherRepository.findById(tvo.getTeacherId()).get();
		//result.setTcTruefalse(tvo.getTcTruefalse());
		// teacherRepository.save(result);
		
		teacherRepository.save(tvo);
		
	}
	
	
	
	



}
