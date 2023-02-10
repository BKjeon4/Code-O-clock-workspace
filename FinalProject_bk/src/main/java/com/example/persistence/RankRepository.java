package com.example.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.EducationVO;
import com.example.domain.ReviewVO;

public interface RankRepository extends CrudRepository<EducationVO, Integer> {

	//1~3위
	@Query(value="SELECT e.ed_name AS NAME , e.ed_pic AS pic, ed_title AS title, round(avg(r.star),2) AS star,RANK() over (ORDER BY star desc) as 'RANK', e.ed_url\r\n"
			+ "FROM education AS e left outer join review AS r\r\n"
			+ "ON e.ed_id = r.ed_id\r\n"
			+ "GROUP BY e.ed_name\r\n"
			+ "ORDER BY star DESC\r\n"
			+ "LIMIT 3", nativeQuery=true)
	List<Object[]> rankQuery();
	
	//4~10위
	@Query(value="SELECT e.ed_name AS NAME , ed_pic AS pic, ed_title AS title, round(avg(r.star),2) AS star,RANK() over (ORDER BY star desc) as 'RANK', e.ed_url\r\n"
			+ "FROM education e left outer join review r\r\n"
			+ "ON e.ed_id = r.ed_id\r\n"
			+ "GROUP BY e.ed_name\r\n"
			+ "ORDER BY star DESC\r\n"
			+ "LIMIT 3,7", nativeQuery=true)
	List<Object[]> rankQueryOther();
	
	//1위
	@Query(value="SELECT e.ed_name AS NAME , e.ed_pic AS pic, ed_title AS title, round(avg(r.star),2) AS star,RANK() over (ORDER BY star desc) as 'RANK',e.ed_url\r\n"
			+ "FROM education AS e left outer join review AS r\r\n"
			+ "ON e.ed_id = r.ed_id\r\n"
			+ "GROUP BY e.ed_name\r\n"
			+ "ORDER BY star DESC\r\n"
			+ "LIMIT 1", nativeQuery=true)
	List<Object[]> rankQueryFirst();
	
	//2위
	@Query(value="SELECT e.ed_name AS NAME , e.ed_pic AS pic, ed_title AS title, round(avg(r.star),2) AS star,RANK() over (ORDER BY star desc) as 'RANK', e.ed_url\r\n"
			+ "FROM education AS e left outer join review AS r\r\n"
			+ "ON e.ed_id = r.ed_id\r\n"
			+ "GROUP BY e.ed_name\r\n"
			+ "ORDER BY star DESC\r\n"
			+ "LIMIT 1,1", nativeQuery=true)
	List<Object[]> rankQuerySecond();
	
	//3위
	@Query(value="SELECT e.ed_name AS NAME , e.ed_pic AS pic, ed_title AS title, round(avg(r.star),2) AS star,RANK() over (ORDER BY star desc) as 'RANK', e.ed_url\r\n"
			+ "FROM education AS e left outer join review AS r\r\n"
			+ "ON e.ed_id = r.ed_id\r\n"
			+ "GROUP BY e.ed_name\r\n"
			+ "ORDER BY star DESC\r\n"
			+ "LIMIT 2,1", nativeQuery=true)
	List<Object[]> rankQueryThird();
	
	
}
