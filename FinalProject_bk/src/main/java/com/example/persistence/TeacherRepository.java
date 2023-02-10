package com.example.persistence;



import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.TeacherVO;

public interface TeacherRepository extends CrudRepository<TeacherVO, Integer>{
	
	
	
	
	//선생님 리스트 페이징
	 @Query(value=" SELECT *  "
	            + " FROM vchat_teacher "
	            + " WHERE ( lower(t_name) LIKE CONCAT('%',?1,'%') "
	            + " OR lower(t_keyword) LIKE CONCAT('%',?1,'%') ) "
	            + " AND t_tf = 1",
	         countQuery="SELECT count(*)  "
	                   + " FROM vchat_teacher "
	                   + " WHERE ( lower(t_name) LIKE CONCAT('%',?1,'%') "
	   	            + " OR lower(t_keyword) LIKE CONCAT('%',?1,'%') ) "
		            + " AND t_tf = 1",
	                   nativeQuery=true)
    Page<TeacherVO> AllTeacherAndPagingAndSearch(Pageable paging, 
            String keywords);

	 
	 
	 
	//선생 프라이머리키 id값 얻어오기 
	TeacherVO findByTeacherId(Integer teacherId);
	
	
	
	//선생정보 가져오기용
	List<TeacherVO> findAll();
	 
	
	
	
	 
	
	 
	
}
