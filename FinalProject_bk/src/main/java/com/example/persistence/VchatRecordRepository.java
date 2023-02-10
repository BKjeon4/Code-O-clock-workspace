package com.example.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.CalendarVO;
import com.example.domain.VchatRecordVO;

public interface VchatRecordRepository extends CrudRepository<VchatRecordVO, Integer> {
	
	List<VchatRecordVO> findByMemIdInt(Integer memIdInt);
	
	List<VchatRecordVO> findByTeacherId(Integer teacherId);

}
