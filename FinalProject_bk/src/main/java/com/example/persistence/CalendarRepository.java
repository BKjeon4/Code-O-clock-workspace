package com.example.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.CalendarVO;
import com.example.domain.VchatFileVO;
import com.example.domain.VchatRecordVO;

public interface CalendarRepository extends CrudRepository<CalendarVO, Integer> {

	
	
	// 달력에 입력된 db값을 List화
	// cal_reserve(예약시 1, 예약 아닐시 0)을 0인것을 띄움
	@Query(value="SELECT *\r\n"
				+ "FROM calendar c inner join vchat_teacher t\r\n"
				+ "ON c.t_id = t.t_id\r\n"
				+ "WHERE c.t_id =?1 AND c.cal_reserve=0 AND c.cal_start>=SYSDATE()", nativeQuery=true)
	List<CalendarVO> CalendarSearch(Integer tId);
	
	// 예약누를시 cal_reserve를 1(예약상태)로 변경
	@Query(value="UPDATE calendar SET cal_reserve = 1, checkout_date=sysdate(), price=ABS(TIMESTAMPDIFF(HOUR, cal_end, cal_start))*10000, checkout_name=?2, room_id=?3, vc_id=?4, m_idint=?5 WHERE cal_id = ?1", nativeQuery = true)
	Integer reservation(Integer calId, String tempidString, String uuid, Integer vcId, Integer memIdInt);
	
	// 취소 누를 시 해당 cal_id의 데이터를 삭제
	@Query(value="DELETE FROM calendar WHERE cal_id = ?1", nativeQuery = true)
	void deleteReservation(Integer calId);
	

//--------------------------------------------------------------------------------------------------------------------------------------------
	
	// 회원 예약 현황
	@Query(value="SELECT c.cal_id calid, c.cal_start calstart, c.cal_reserve calreserve, "
			+ "c. cal_end calend, c.m_idint memidint, c.room_id roomid, c.t_id tid, v.vc_title vctitle, t.t_pic tcpic, t.t_name tcname "
			+ "FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ "left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ "WHERE c.m_idint =?1 AND c.cal_start >= (SELECT DATE_ADD(NOW(), INTERVAL 30 MINUTE)) AND c.cal_reserve=1 "
			+ "ORDER BY c.cal_start", nativeQuery=true)
	List<Map<String, Object>> memberCalendarSearch(Integer memIdInt);
	
	// 회원 수업함 (CalendarVO) (전체)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.m_idint=?1 "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.m_idint=?1 "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getLessonBox(Pageable paging, Integer memIdInt);
	
	// 회원 수업함 (CalendarVO) (vc_title 검색)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.m_idint=?1 AND vc_title LIKE CONCAT('%',?2,'%') "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.m_idint=?1 AND vc_title LIKE CONCAT('%',?2,'%') "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getLessonBoxVctitle(Pageable paging, Integer memIdInt, String searchword);

	// 회원 수업함 (CalendarVO) (cal_start 검색)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.m_idint=?1 AND cal_start LIKE CONCAT('%',?2,'%') "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.m_idint=?1 AND cal_start LIKE CONCAT('%',?2,'%') "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getLessonBoxCalstart(Pageable paging, Integer memIdInt, String searchword);

	// 회원 수업함 (CalendarVO) (t_name 검색)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.m_idint=?1 AND t.t_name LIKE CONCAT('%',?2,'%') "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.m_idint=?1 AND t.t_name LIKE CONCAT('%',?2,'%') "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getLessonBoxTcname(Pageable paging, Integer memIdInt, String searchword);

//---------------------------------------------------------------------------------------------------------------------------
	
	// 선생님 예약 현황
	@Query(value="SELECT c.cal_id calid, c.cal_start calstart, c.cal_reserve calreserve, "
			+ "c. cal_end calend, c.m_idint memidint, c.room_id roomid, c.t_id tid, v.vc_title vctitle, t.t_pic tcpic, t.t_name tcname, "
			+ "m.m_profile memprofile, m.m_idstring memidstring "
			+ "FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ "left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ "left outer join member m ON c.m_idint = m.m_idint "
			+ "WHERE c.t_id =?1 AND c.cal_start >= (SELECT DATE_ADD(NOW(), INTERVAL 30 MINUTE)) AND c.cal_reserve=1 "
			+ "ORDER BY c.cal_start", nativeQuery=true)
	List<Map<String, Object>> teacherCalendarSearch(Integer teacherId);
	
	// 선생님 수업함 (CalendarVO) (전체)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.t_id=?1 "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.t_id=?1 "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getTutorBox(Pageable paging, Integer teacherId);
	
	// 선생님 수업함 (CalendarVO) (vc_title 검색)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.t_id=?1 AND vc_title LIKE CONCAT('%',?2,'%') "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.t_id=?1 AND vc_title LIKE CONCAT('%',?2,'%') "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getTutorBoxVctitle(Pageable paging, Integer teacherId, String searchword);
	
	// 선생님 수업함 (CalendarVO) (cal_start 검색)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.t_id=?1 AND cal_start LIKE CONCAT('%',?2,'%') "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.t_id=?1 AND cal_start LIKE CONCAT('%',?2,'%') "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getTutorBoxCalstart(Pageable paging, Integer teacherId, String searchword);

	// 선생님 수업함 (CalendarVO) (t_name 검색)
	@Query(value="SELECT c.*, v.vc_title vctitle, t.t_name tcname "
			+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
			+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
			+ " WHERE c.t_id=?1 AND t.t_name LIKE CONCAT('%',?2,'%') "
			+ " ORDER BY cal_start DESC",
			countQuery = "SELECT count(*) "
					+ " FROM calendar c left outer join vchat_class v ON c.vc_id = v.vc_id "
					+ " left outer join vchat_teacher t ON c.t_id = t.t_id "
					+ " WHERE c.t_id=?1 AND t.t_name LIKE CONCAT('%',?2,'%') "
					+ " ORDER BY cal_start DESC",
			nativeQuery=true)
	Page<Map<String, Object>> getTutorBoxTcname(Pageable paging, Integer teacherId, String searchword);
	
	
	//관리자모드에서 결제내역 출력
	@Query(value="select *\r\n"
				+ "FROM calendar\r\n"
				+ "WHERE cal_reserve=1", nativeQuery=true)
	List<CalendarVO> CheckoutInfom(CalendarVO vo);
	
	
}
