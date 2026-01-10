package com.example.persistence;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.example.domain.SearchVO;

public interface SearchRepository extends CrudRepository<SearchVO, Integer>{

@Modifying
@Transactional
@Query(
  value = "INSERT INTO search (keywords, m_idint) VALUES (:keywords, :memId)",
  nativeQuery = true
)
void insertSearch(@Param("keywords") String keywords,
                  @Param("memId") Integer memId);




}
