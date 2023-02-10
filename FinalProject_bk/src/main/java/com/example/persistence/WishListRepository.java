package com.example.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.MemberVO;
import com.example.domain.WishListVO;

public interface WishListRepository extends CrudRepository<WishListVO, Integer>{

	@Query(value="SELECT e.ed_title as ed_title,\n"
			+ "w.w_id AS w_id, w.m_idint AS m_idint,\n"
			+ "	e.ed_price as ed_price,\n"
			+ "	e.ed_pic as ed_pic,\n"
			+ "	e.ed_id as ed_id,\n"
			+ "e.ed_start_date as ed_start_date,\n"
			+ "e.ed_end_date as ed_end_date\n"
			+ "FROM wishlist w, education e\n"
			+ "WHERE  e.ed_id = w.ed_id AND w.m_idint=?\n"
			+ "ORDER BY w.w_id DESC"
			, nativeQuery=true)
	List<Object[]> findByMemIdInt(Integer memIdInt);


	//Optional<WishListVO> findByMemId(MemberVO memId);

	//위시리스트 입력
	@Query(value="INSERT INTO wishlist (m_idint, ed_id) VALUES(?1, ?2)", nativeQuery=true)
	void insertWish(Integer memIdInt, Integer edId);

	//위시리스트 삭제
	@Query(value="DELETE FROM wishlist WHERE m_idint=?1 AND w_id=?2", nativeQuery=true)
	void deleteWish(Integer memIdInt, Integer wId);

	@Query(value="SELECT * FROM wishlist WHERE m_idint =?1 AND ed_id =?2", nativeQuery=true)
	WishListVO getWish(Integer memIdInt, Integer edId);


}
