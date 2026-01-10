package com.example.persistence;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class SearchRepository {

    @PersistenceContext
    private EntityManager em;

    @Transactional
    public void insertSearch(String keywords, Integer memId) {
        em.createNativeQuery(
            "INSERT INTO search (keywords, m_idint) VALUES (:keywords, :memId)"
        )
        .setParameter("keywords", keywords)
        .setParameter("memId", memId)
        .executeUpdate();
    }
}
