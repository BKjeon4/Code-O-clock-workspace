package com.example.persistence;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.EducationVO;

public interface EducationRepository extends CrudRepository<EducationVO, Integer> {

    // 전체 조회
    List<EducationVO> findAll();

    // ===============================
    // 전체 검색 + 페이징 (최신순)
    // ===============================
    @Query(
        value =
            " SELECT * " +
            " FROM education " +
            " WHERE (LOWER(ed_title) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_name) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_keyword) LIKE CONCAT('%', ?1, '%')) " +
            " AND ed_tf = 1 " +
            " ORDER BY ed_days DESC ",
        countQuery =
            " SELECT COUNT(*) " +
            " FROM education " +
            " WHERE (LOWER(ed_title) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_name) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_keyword) LIKE CONCAT('%', ?1, '%')) " +
            " AND ed_tf = 1 ",
        nativeQuery = true
    )
    Page<EducationVO> AllSearchAndPagingQuery(Pageable paging, String keywords, String order);

    // ===============================
    // 별점 높은 순
    // ===============================
    @Query(
        value =
            " SELECT * " +
            " FROM education " +
            " WHERE (LOWER(ed_title) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_name) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_keyword) LIKE CONCAT('%', ?1, '%')) " +
            " AND ed_tf = 1 " +
            " ORDER BY avg DESC ",
        countQuery =
            " SELECT COUNT(*) " +
            " FROM education " +
            " WHERE (LOWER(ed_title) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_name) LIKE CONCAT('%', ?1, '%') " +
            "    OR LOWER(ed_keyword) LIKE CONCAT('%', ?1, '%')) " +
            " AND ed_tf = 1 ",
        nativeQuery = true
    )
    Page<EducationVO> starDesc(Pageable paging, String keywords, String order);

    // 상세 페이지
    EducationVO findByedId(Integer edId);

    // ===============================
    // 메인 index 페이지 (별점순)
    // ===============================
    @Query(
        value =
            " SELECT * " +
            " FROM education " +
            " WHERE ed_tf = 1 " +
            " ORDER BY avg DESC ",
        nativeQuery = true
    )
    Page<EducationVO> getNewIndex(Pageable paging, String keywords, String order);

    // ==================================================
    // academy/index / academy/rank (H2 + MySQL 호환)
    // ==================================================
// 메인 index / academy rank용 - 별점 1위 1개
@Query(
    value =
        "SELECT e.ed_name   AS name, " +
        "       e.ed_pic    AS pic, " +
        "       e.ed_title  AS title, " +
        "       ROUND(AVG(r.star), 2) AS star, " +
        "       e.ed_url    AS ed_url " +
        "FROM education e " +
        "LEFT JOIN review r ON e.ed_id = r.ed_id " +
        "WHERE e.ed_tf = 1 " +
        "GROUP BY e.ed_id, e.ed_name, e.ed_pic, e.ed_title, e.ed_url " +
        "ORDER BY star DESC " +
        "LIMIT 1",
    nativeQuery = true
)
List<Object[]> rankQueryFirst();

}
