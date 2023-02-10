package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.CalendarVO;
import com.example.persistence.CalendarRepository;

@Service
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	CalendarRepository calRepo;

	//선생님 예약 등록하기
	@Override
	public void insertReservation(CalendarVO vo) {
		calRepo.save(vo);
	}
	
	


}
