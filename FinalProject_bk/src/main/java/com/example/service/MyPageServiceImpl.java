package com.example.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.domain.VchatFileVO;
import com.example.domain.VchatRecordVO;
import com.example.persistence.CalendarRepository;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private CalendarRepository calRepo;

	@Override
	public Page<Map<String, Object>> getTutorBox(Pageable paging, Integer teacherId) {
		
		Page<Map<String, Object>> tutorBoxTemp = calRepo.getTutorBox(paging, teacherId);
		//List<VchatRecordVO> tutorBoxRecord = calRepo.getTutorRecord(teacherId);
		//List<VchatFileVO> tutorBoxFile = calRepo.getTutorFile(teacherId);
		
		System.out.println("HashMap : " + tutorBoxTemp.getContent());
		
		List<HashMap<String, Object>> hashTempList = new ArrayList<HashMap<String, Object>>();
		
		for(Map<String, Object> temp : tutorBoxTemp.getContent()) {
			
			HashMap<String, Object> hashTemp = new HashMap<String, Object>();
			
			System.out.println("calId : " + temp.get("calId"));
			System.out.println("calstart : " + temp.get("calstart"));
			System.out.println("tcname : " + temp.get("tcname"));
			System.out.println("vctitle : " + temp.get("vctitle"));
			
			hashTemp.put("calstart", temp.get("calstart"));
			hashTemp.put("tcname", temp.get("tcname"));
			hashTemp.put("vctitle", temp.get("vctitle"));
			
			/*
			ArrayList<VchatRecordVO> recordTemp = new ArrayList <VchatRecordVO> ();
			ArrayList<VchatFileVO> fileTemp = new ArrayList <VchatFileVO> ();
			*/
			
			Integer calId = (Integer)temp.get("calId");
			
			/*
			for(VchatRecordVO vo : tutorBoxRecord) {
				if(calId == vo.getCalId()) {
					recordTemp.add(vo);
				}
			}
			
			for(VchatFileVO vo : tutorBoxFile) {
				if(calId == vo.getCalId()) {
					fileTemp.add(vo);
				}
			}
			*/
			
			
			
			hashTempList.add(hashTemp);
			
		}
		
		return tutorBoxTemp;
	}

}
