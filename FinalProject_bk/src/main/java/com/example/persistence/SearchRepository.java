package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface SearchRepository extends JpaRepository<Search, Integer> {

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
