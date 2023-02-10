package com.example.persistence;



import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.domain.ReviewVO;



public interface ReviewRepository extends JpaRepository<ReviewVO, Integer> {




	//1)
	//국비부트 > 리뷰가져오기용 + 리뷰페이징
	@Query(value = "SELECT *"
			+ " FROM review WHERE ed_id=?1",
			countQuery = "SELECT count(*) FROM review  WHERE ed_id=?1",
			nativeQuery=true)
	Page<ReviewVO> getReviewAndPaging(Pageable paging, String temp_ed_id);




	//2)
	//화상 >  리뷰가져오기용 + 리뷰페이징
	@Query(value = "SELECT *"
			+ " FROM review WHERE vc_id=?1",
			countQuery = "SELECT count(*) FROM review  WHERE vc_id=?1",
			nativeQuery=true)
	Page<ReviewVO> getReviewAndPagingvc(Pageable paging, String re);



	//-------------------------------------------------------------------------
	//1)
	//국비/부트 > 리뷰별점평균용 > 그 디테일 페이지 가장 큰별임!
	@Query(value="SELECT ed_id, (ROUND(AVG(star))) AS avg "
			+ "FROM review "
			+ "GROUP BY ed_id "
			+ "ORDER by avg DESC",  nativeQuery=true)
	List<Object[]>avgStar();


	//2)
	//화상 > 리뷰별점평균용 > 그 디테일 페이지 가장 큰별임!
	@Query(value="SELECT vc_id, (ROUND(AVG(star))) AS avg "
			+ "FROM review "
			+ "GROUP BY vc_id "
			+ "ORDER by avg DESC",  nativeQuery=true)
	List<Object[]>avgStarvc();




	//------------------------------------------------------------------------------

	//1)
	//마이페이지에 국비부트에서 쓴 리뷰 가져오기 !
	@Query(value = " SELECT * "
			+ " FROM review "
			+ " WHERE m_idint= ?1 AND ed_id IS NOT NULL ",
			countQuery = " SELECT count(*) "
					+ " FROM review "
					+ " WHERE m_idint= ?1 AND ed_id IS NOT NULL ", 
					nativeQuery=true)
	Page<ReviewVO> getMyReview1(Pageable paging, String temp_m_idint);


	//2)
	//마이페이지에 화상에서 쓴 리뷰 가져오기 !
	@Query(value = " SELECT * "
			+ " FROM review "
			+ " WHERE m_idint= ?1 AND vc_id IS NOT NULL ",
			countQuery = " SELECT count(*) "
					+ " FROM review "
					+ " WHERE m_idint= ?1 AND vc_id IS NOT NULL ", 
					nativeQuery=true)
	Page<ReviewVO> getMyReview2(Pageable paging, String temp_m_idint);


}