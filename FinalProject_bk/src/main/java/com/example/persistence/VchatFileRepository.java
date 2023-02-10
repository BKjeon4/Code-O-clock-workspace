package com.example.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.VchatFileVO;
import com.example.domain.VchatRecordVO;

public interface VchatFileRepository extends CrudRepository<VchatFileVO, Integer> {
	
	List<VchatFileVO> findByMemIdInt(Integer memIdInt);
	
	List<VchatFileVO> findByTeacherId(Integer teacherId);

}
