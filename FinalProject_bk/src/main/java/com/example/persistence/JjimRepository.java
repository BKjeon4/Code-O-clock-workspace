package com.example.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.JjimVO;

public interface JjimRepository extends CrudRepository<JjimVO, Integer> {

	@Query(value="SELECT v.vc_title as vc_title,\n"
			+ "j.jj_id AS jj_id, j.m_idint AS j_m_idint,\n"
			+ "	v.vc_pic as vc_pic,\n"
			+ "	v.vc_keyword as vc_keyword,\n"
			+ "	v.vc_id as vc_id,\n"
			+ "v.vc_days as vc_days\n"
			+ "FROM jjim j, vchat_class v\n"
			+ "WHERE  v.vc_id = j.vc_id AND j.m_idint=?", nativeQuery=true)
	List<Object[]> findByMemIdIntlec(Integer memIdInt);

	//찜리스트 삭제
	@Query(value="DELETE FROM jjim WHERE m_idint=?1 AND jj_id=?2", nativeQuery=true)
	void deleteJjim(Integer memIdInt, Integer jjId);


	//찜리스트 입력
	@Query(value="INSERT INTO jjim (m_idint, vc_id) VALUES(?1, ?2)", nativeQuery=true)
	void insertJjim(Integer memIdInt, Integer vcId);	
}
