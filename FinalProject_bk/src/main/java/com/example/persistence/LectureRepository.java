package com.example.persistence;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.LectureVO;

public interface LectureRepository extends CrudRepository<LectureVO, Integer> {

	//Pageable : Pagination 요청 정보를 담기위한 추상 인터페이스
	//Education 테이블을 페이징하는 메서드
	//전체검색을 페이징
	List<LectureVO> findAll();

	
	
	
	
	//화상부분임
	//0106 찬주
	//마리아디비는 문자열 연결할때 CONCAT을 사용합시다!
	//카테고리별, 메인에서 전문검색, 셀렉박스 선택용 검색 
	//네이티브 쿼리로 구현해서 페이징까지 완성된 최종본
	//AllSearchAndPagingQuery 라는 이름은 제가 만든것입니다 이해하기 쉽게~
	
	//일반출력 과 + 최신순정렬
	@Query(value=" SELECT *  "
			+ " FROM vchat_class "
			+ " WHERE lower(vc_title) LIKE CONCAT('%',?1,'%') "
			+ " OR lower(vc_keyword) LIKE CONCAT('%',?1,'%')   " 
			
			 + " ORDER BY vc_days DESC ",
			countQuery=" SELECT *  "
					+ " FROM vchat_class "
					+ " WHERE lower(vc_title) LIKE CONCAT('%',?1,'%') "
					+ " OR lower(vc_keyword) LIKE CONCAT('%',?1,'%')  " 
					
					 + " ORDER BY vc_days DESC ",
					nativeQuery=true)
	Page<LectureVO> AllSearchAndPagingQuery(Pageable paging, 
			String keywords, String order);

	
	
	
	
	
	
	//화상부분임
	//별점높은순 출력
	@Query(value=" SELECT *  "
			+ " FROM vchat_class "
			+ " WHERE lower(vc_title) LIKE CONCAT('%',?1,'%') "
			+ " OR lower(vc_keyword) LIKE CONCAT('%',?1,'%')   " 
			
			 + " ORDER BY avg DESC ",
			countQuery=" SELECT *  "
					+ " FROM vchat_class "
					+ " WHERE lower(vc_title) LIKE CONCAT('%',?1,'%') "
					+ " OR lower(vc_keyword) LIKE CONCAT('%',?1,'%')   " 
					
					 + " ORDER BY avg DESC ",
					nativeQuery=true)
	Page<LectureVO> starDesc(Pageable paging, 
			String keywords, String order);




	// 선생님 아이디로 강의정보 출력
	List<LectureVO> findByTcId(Integer teacherId);

	//강의아이디로 상세정보 출력
	List<LectureVO> findByVcId(Integer vcId);

	//------------------------------------------------------------------------
	//lecture-index
	//인덱스페이지에서 별점 높은 녀석만 출력
    @Query(value= " SELECT *  "
            + " FROM vchat_class "
            + " WHERE lower(vc_title) LIKE CONCAT('%',?1,'%')"
            + " OR lower(vc_keyword) LIKE CONCAT('%',?1,'%')"
            + " ORDER BY avg DESC", nativeQuery=true)
    Page<LectureVO> getNewIndex (Pageable paging, String keywords, String order);





}