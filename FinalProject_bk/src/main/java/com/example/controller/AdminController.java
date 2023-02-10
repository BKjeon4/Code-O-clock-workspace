package com.example.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.AdminVO;
import com.example.domain.AnnouncementVO;
import com.example.domain.CalendarVO;
import com.example.domain.EducationVO;
import com.example.domain.LectureVO;
import com.example.domain.MemberVO;
import com.example.domain.ReviewVO;
import com.example.domain.TeacherVO;
import com.example.persistence.CalendarRepository;
import com.example.persistence.EducationRepository;
import com.example.persistence.ReviewRepository;
import com.example.persistence.TeacherRepository;
import com.example.service.AdminService;
import com.example.service.AnnouncementService;
import com.example.service.EducationService;
import com.example.service.LectureService;
import com.example.service.MemberService;
import com.example.service.ReviewService;
import com.example.service.TeacherService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private EducationService eduService;

	@Autowired
	private EducationRepository educationRepository;

	@Autowired
	private AnnouncementService announcementService;

	@Autowired
	private TeacherService teacherService;

	@Autowired
	private  TeacherRepository teacherRepository;

	@Autowired
	private ReviewService reviewService;

	@Autowired
	private LectureService lectureService;

	@Autowired
	private MemberService memService;

	@Autowired
	private CalendarRepository calRepo;



	@Autowired
	private AdminService adminService;


	//경호
	//학원등록 페이지로 이동
	@RequestMapping("/academyRegister")
	public String academyRegister(EducationVO vo, Model m) {
		System.out.println("academy Register : " + vo);
		//교육과정에 대한 전체값 가져오기
		EducationVO result = eduService.getBoard(vo);
		System.out.println("result : " + result);
		//jsp 파일에 붙이기
		m.addAttribute("education", result);
		return "/admin/academyRegister";
	}
	//경호
	//학원목록 페이지로 이동
	@RequestMapping("/academyList")
	public String academyList(Model m) {   
		List<EducationVO> list = eduService.selectAllAcademy();
		m.addAttribute("result", list);
		return "admin/academyList";
	}

	//경주
	//관리자에 공지 목록띄움
	@RequestMapping("/announcement_m")
	public String annoList(Model m) {	
		List<AnnouncementVO> list = announcementService.selectAllAnnouncement();
		m.addAttribute("result", list);
		return "admin/announcement_m";
	}

	//경주
	//공지상세 페이지띄우기
	@RequestMapping("/announcementModify")
	public void getAnnouncement(AnnouncementVO vo, Model m) {
		m.addAttribute("anno", announcementService.getAnnouncement(vo));

	}

	//경주 
	//공지 등록하기
	@RequestMapping("/announcementInsertReal")
	public String announcementInsert(AnnouncementVO vo) {
		System.out.println("1");
		System.out.println("AD ID: " + vo.getAdId());
		announcementService.announcementInsert(vo);
		System.out.println("2");
		return "redirect:announcement_m";
	}	

	//경주
	//공지내용 삭제하기
	@RequestMapping("/announcementDelete")
	public String deleteAnnouncement(AnnouncementVO vo) {
		announcementService.announcementDelete(vo);
		return "redirect:announcement_m";
	}

	//경주
	//공지내용 수정하기
	@RequestMapping("announcementUpdate")
	public String updateAnnouncement(AnnouncementVO vo) {
		announcementService.announcementUpdate(vo);
		return "redirect:announcement_m";
	}




	//찬주 선생리스트 가져오기 
	@GetMapping("/teacherlist")
	public String getTeacher(Model m) {
		List<TeacherVO> result =  teacherService.AllTeacher();
		m.addAttribute("teacherlist", result);

		return "/admin/teacherlist";
	}//end of getTeacher




	//찬주 선생 승인여부 페이지 아이디값 가져와 나오게하기
	//선생님 상세페이지
	@GetMapping("/teacherRegister")
	public String getTeacherRegister(Model m, Integer teacherId) {

		//아이디 값 기준으로 등록한 선생님정보 가져오기 위함
		TeacherVO result = teacherRepository.findByTeacherId(teacherId);
		m.addAttribute("teacherRegister", result);

		return "/admin/teacherRegister";

	}// end of getTeacherRegister



	//선생 승인여부 수정
	@PostMapping("/teacherUpdate")
	public String teacherUpdate(TeacherVO tvo) {

		System.out.println("선생 승인 수정대상 : "+tvo);
		teacherService.updateTeacher(tvo);

		return "redirect:/admin/teacherlist";
	}






	//찬주 국비/부트 리스트 가져오기 
	@GetMapping("/academyList")
	public String getEducation(Model m) {
		List<EducationVO> result2 =  eduService.AllEducation();
		m.addAttribute("academyList", result2);

		return "/admin/academyList";
	}//end of getTeacher




	//찬주 국비부트 승인여부 페이지 아이디값 가져와 나오게하기
	//국비/부트 상세페이지
	@GetMapping("/academyRegister")
	public String getEducationRegister(Model m, Integer edId) {

		//아이디 값 기준으로 등록한 선생님정보 가져오기 위함
		EducationVO result2 = educationRepository.findByedId(edId);
		m.addAttribute("academyRegister", result2);

		return "/admin/academyRegister";

	}// end of getTeacherRegister



	//국비/부트 승인여부 수정
	@PostMapping("/educationUpdate")
	public String educationUpdate(EducationVO evo) {

		System.out.println("국비/부트 수정대상 : "+evo);
		eduService.updateEducation(evo);

		return "redirect:/admin/academyList";
	}

	//----------------------------------------------------------------------------------------------

	//경호
	//회원목록 나오게 하기
	@RequestMapping("/memberlist")
	public String memberList(Model m) {
		List<MemberVO> list = memService.memberList();	
		m.addAttribute("memberList", list );
		return "admin/memberlist";
	}

	//경호
	//멤버 상세정보 보기
	@RequestMapping("/memberDetail")
	public String memberDetail(Model m, MemberVO mvo, CalendarVO cvo) {
		//회원정보 호출
		MemberVO result = memService.findByMemIdString(mvo);
		//결제정보 호출
		List<CalendarVO> clist = calRepo.CheckoutInfom(cvo);

		//회원정보 붙이기
		m.addAttribute("memberList", result);
		//결제내역 붙이기
		m.addAttribute("checkoutList",clist);

		return "admin/memberDetail";
	}

	//경호
	//리뷰리스트 출력
	@RequestMapping("/reviewList")
	public String reviewList(Model m) {
		List<ReviewVO> list = reviewService.reviewList();
		m.addAttribute("reviewList", list);
		return "admin/reviewList";
	}

	//경호
	//학원교육과정 삭제하기
	@RequestMapping("/deleteAcademy")
	public String deleteAcademy(EducationVO vo) {
		eduService.deleteAcademy(vo);
		return "redirect:academyList";
	}

	//경호
	//강의리스트 출력
	@RequestMapping("/lecturelist")
	public String lectureList(Model m) {
		List<LectureVO> list = lectureService.lectureList();
		m.addAttribute("lectureList", list);
		return "/admin/lecturelist";
	}

	//경호
	//강의 상세정보 보기
	@RequestMapping("/lectureRegister")
	public String lectureRegister(Model m, LectureVO vo) {
		LectureVO result = lectureService.getBoard(vo);
		System.out.println(result);
		m.addAttribute("lectureList", result);
		return "/admin/lectureRegister";
	}

	//경주
	//결제내역 보기
	@RequestMapping("/checkout")
	public String checkout(Model m, CalendarVO vo) {
		List<CalendarVO> list = calRepo.CheckoutInfom(vo);
		m.addAttribute("checkoutList",list);
		return "/admin/checkout";
	}

	//--------------------------------------------------------------------

	// 회원가입
	@RequestMapping("/insertAdmin")
	public String insertAdmin(AdminVO vo) {
		System.out.println(vo); // 회원가입 할 때 생성되는 vo
		System.out.println(vo.getAdId());
		adminService.insertAdmin(vo);
		return "redirect:/admin/login";
	}

	//관리자 로그인
	@RequestMapping("/loginAdmin")
	public String loginAdmin(AdminVO vo, HttpSession session, Model m) {

		AdminVO result  = adminService.loginAdmin(vo);
		System.out.println("로그인 결과 : " + result); // 서비스 거쳐서 만들어진 vo

		if(result !=null) { //로그인
			System.out.println("로그인 성공**** : " + result);
			session.setAttribute("adId", result.getAdId());

			return "redirect:/admin/index";
		}else{ // 로그인 실패
			return "redirect:/admin/login";
		}

	}
	// 아이디 중복 체크
	@RequestMapping(value = "adIdCheck")
	@ResponseBody // ajax 쓸 때 필요
	public String adIdCheck(String adId) {
		System.out.println("아이디중복체크");
		int result = adminService.adIdCheck(adId);
		System.out.println("중복체크------" + result);
		return String.valueOf(result);

	}

	// 로그아웃
	@RequestMapping("logoutAdmin")
	public String logoutAdmmin(HttpSession session) {
		System.out.println("로그아웃");
		session.removeAttribute("adId");
		return "redirect:/admin/login";
	}

}
