package com.example.persistence;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public interface SearchRepository extends Repository<Object, Integer> {

    @Modifying
    @Transactional
    @Query(
      value = "INSERT INTO search (keywords, m_idint) VALUES (:keywords, :memId)",
      nativeQuery = true
    )
    void insertSearch(
        @Param("keywords") String keywords,
        @Param("memId") Integer memId
    );
}
