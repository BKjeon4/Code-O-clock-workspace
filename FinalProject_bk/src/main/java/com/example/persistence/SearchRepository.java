package com.example.persistence;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.example.domain.SearchVO;

public interface SearchRepository extends CrudRepository<SearchVO, Integer>{

	//위시리스트 입력
	@Query(value="INSERT INTO search (keywords,m_idint) VALUES(?1,?2)", nativeQuery=true)
	void insertSearch(String keywords, Integer mIdInt);



}
