package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.CalendarVO;
import com.example.domain.EducationVO;
import com.example.domain.ReviewVO;
import com.example.domain.TeacherVO;
import com.example.domain.VchatFileVO;
import com.example.domain.VchatRecordVO;
import com.example.persistence.CalendarRepository;
import com.example.persistence.JjimRepository;
import com.example.persistence.ReviewRepository;
import com.example.persistence.VchatFileRepository;
import com.example.persistence.VchatRecordRepository;
import com.example.persistence.WishListRepository;
import com.example.service.CalendarService;
import com.example.service.EducationService;
import com.example.service.TeacherService;
import com.example.service.WishListService;
import com.example.util.MD5Generator;


@Controller
@RequestMapping("/mypage")
public class MypageController {



	@Autowired
	private TeacherService teacherService;

	@Autowired
	private ReviewRepository reviewRepository;
	
	@Autowired
	private EducationService educationService;

	@Autowired
	private WishListRepository wishRepo;

	@Autowired
	private WishListService wishService;
	
	@Autowired
	private JjimRepository jjimRepo;
	
	@Autowired
	private CalendarRepository calRepo;
	
	@Autowired
	private VchatRecordRepository vchatRecordRepo;
	
	@Autowired
	private VchatFileRepository vchatFileRepo;

	@Autowired
	private CalendarService calService;




	//선생님 등록전 그냥 화면용
	@GetMapping("/tutorInsert")
	public String tutorPageView() {

		return  "/mypage/tutorInsert";

	}

	//국비/부트 등록전 그냥 화면용
	@GetMapping("/educationInsert")
	public String educationView() {

		return  "/mypage/educationInsert";

	}




	//마이페이지 / 국비/부트 학원 등록용
	@PostMapping("/tutorInsert")
	public String insertTeacher(TeacherVO tvo) {
		System.out.println("tutorInsert 확인" + tvo); 

		teacherService.insertTeacher(tvo);


		return "redirect:/mypage/tutorInsert";   
	}


	
	

	//국비/부트 등록용
	@PostMapping("/educationInsert")
	public String insertEducation(EducationVO evo) {
		System.out.println("insertEducation 확인" + evo); 

		
		educationService.insertEducation(evo);


		return "redirect:/mypage/educationInsert";   
	}






	/*
		  //화면용
		  @GetMapping("/myreview")
		  public String myreviewPageView() {

			  return  "/mypage/myreview";

		  }
	 */


	//마이페이지 국비/부트 부분에서의 리뷰만!
	@GetMapping("/myreview")
	public String getEdReview(ReviewVO rvo, Model model,HttpSession session,
			@RequestParam(required = false, defaultValue = "") String memIdInt,
			@PageableDefault(size = 4, direction = Sort.Direction.DESC) Pageable paging) {


		//세션에 저장된 값으로 넘겨버리기 
		rvo.setMemIdInt((Integer) session.getAttribute("memIdInt"));
		String temp_m_idint = String.valueOf(rvo.getMemIdInt());
		System.out.println(temp_m_idint);
		Page<ReviewVO> mypageReviewList1 = reviewRepository.getMyReview1(paging, temp_m_idint);

		//현재페이지
		int pageNumber=((Slice<ReviewVO>) mypageReviewList1).getPageable().getPageNumber();
		//총페이지수
		int totalPages=((Page<ReviewVO>) mypageReviewList1).getTotalPages(); //검색에따라 10개면 10개..
		int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
		//시작하는 블록
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
		//끝나는 블록
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

		System.out.println("reviewList : " + mypageReviewList1.getContent());

		//각 값들을 jsp 파일에 붙이기
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("mypageReviewList1", mypageReviewList1.getContent()); 


		return "mypage/myreview";
	}


	

	   //마이페이지 화상학원부분
	   @GetMapping("/myreview2")
	   public String getEdReview2(ReviewVO rvo, Model model,HttpSession session,
         @RequestParam(required = false, defaultValue = "") String memIdInt,
         @PageableDefault(size = 4, direction = Sort.Direction.DESC) Pageable paging) {


      //세션에 저장된 값으로 넘겨버리기 
      rvo.setMemIdInt((Integer) session.getAttribute("memIdInt"));
      String temp_m_idint = String.valueOf(rvo.getMemIdInt());
      System.out.println(temp_m_idint);
      Page<ReviewVO> mypageReviewList2 = reviewRepository.getMyReview2(paging, temp_m_idint);

      //현재페이지
      int pageNumber=((Slice<ReviewVO>) mypageReviewList2).getPageable().getPageNumber();
      //총페이지수
      int totalPages=((Page<ReviewVO>) mypageReviewList2).getTotalPages(); //검색에따라 10개면 10개..
      int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
      //시작하는 블록
      int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
      //끝나는 블록
      int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
      endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

      System.out.println("reviewList : " + mypageReviewList2.getContent());

      //각 값들을 jsp 파일에 붙이기
      model.addAttribute("pageNumber", pageNumber);
      model.addAttribute("totalPages", totalPages);
      model.addAttribute("startBlockPage", startBlockPage);
      model.addAttribute("endBlockPage", endBlockPage);
      model.addAttribute("mypageReviewList2", mypageReviewList2.getContent()); 


      return "mypage/myreview2";
   }
	   
	
	
	
	// 경호의 메소드
	
	//위시리스트 교육과정용
	@RequestMapping("/wishlist")
	public void wishList(Model m, Integer memIdInt) {
		List<Object[]> list = wishRepo.findByMemIdInt(memIdInt);
		System.out.println(list);
		m.addAttribute("wishList", list);
	}

	//위시리스트 강의용
	@RequestMapping("/jjimlist")
	public void jjimList(Model m, Integer memIdInt) {
		List<Object[]> list = jjimRepo.findByMemIdIntlec(memIdInt);
		System.out.println(list);
		m.addAttribute("jjimList", list);
	}

	//위시리스트 삭제
	@RequestMapping("/deleteWish")
	public String deletewish(Integer memIdInt, Integer wId) {
		wishService.deleteWish(memIdInt, wId);
		return "redirect:/mypage/wishlist?memIdInt="+ memIdInt;
	}

	//위시리스트 등록
	@RequestMapping("/wishInsert")
	public String wishInsert(Integer memIdInt, Integer edId ) {
		wishService.insertWish(memIdInt, edId);
		return "redirect:/academy/course-details?edId="+ edId;
	}

	//찜리스트 등록
	@RequestMapping("/jjimInsert")
	public String jjimInsert(Integer memIdInt, Integer vcId ) {
		wishService.insertJjim(memIdInt, vcId);
		return "redirect:/lecture/lecture-details?vcId="+ vcId;
	}

	//찜리스트 삭제
	@RequestMapping("/deleteJjim")
	public String jjimDelete(Integer memIdInt, Integer jjId ) {
		wishService.deleteJjim(memIdInt, jjId);
		return "redirect:/mypage/jjimlist?memIdInt="+ memIdInt;
	}

//--------------------------------------------------------------------------------------------------------------------------------------
	
	// 작성자: 임유빈

	// mypage에 있는 회원의 예약 달력과 예약한 방 출력
	@RequestMapping(value = "/lessonreserve", method = RequestMethod.GET)
	//ModelAndView를 이용하여 구현
	public ModelAndView getMemberCalendarList(HttpServletRequest request, HttpSession session) {
		
		Integer memIdInt = (Integer) session.getAttribute("memIdInt");
		
		String viewpage = "/mypage/lessonreserve";
		List<Map<String, Object>> calendarTemp = null;
		try {
			calendarTemp = calRepo.memberCalendarSearch(memIdInt);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 새로운 리스트를 준비
		List<HashMap<String, Object>> calendar = new ArrayList<HashMap<String, Object>>();
		
		// 새로운 HashMap을 생성하고 차례대로 값을 집어넣기
		for(Map<String, Object> m : calendarTemp) {
			System.out.println("calid : " + m.get("calid"));
			
			HashMap<String, Object> HashTemp = new HashMap<String, Object> ();
			HashTemp.put("calid", m.get("calid"));
			HashTemp.put("caltitle", m.get("caltitle"));
			HashTemp.put("calstart", m.get("calstart"));
			HashTemp.put("calreserve", m.get("calreserve"));
			HashTemp.put("calend", m.get("calend"));
			HashTemp.put("memidint", m.get("memidint"));
			HashTemp.put("roomid", m.get("roomid"));
			HashTemp.put("tid", m.get("tid"));
			HashTemp.put("vctitle", m.get("vctitle"));
			HashTemp.put("tcpic", m.get("tcpic"));
			HashTemp.put("tcname", m.get("tcname"));
			
			//원하는 데이터 포맷 지정
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 a h:mm"); 
			String dateTemp = simpleDateFormat.format(m.get("calstart"));
			System.out.println("date format : " + dateTemp);
			// 새로운 형식의 날짜를 HashMap에 추가
			HashTemp.put("calstartSTR", dateTemp);
			
			calendar.add(HashTemp);
		}
		
		request.setAttribute("calendarList", calendar);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(viewpage);
		return mv;
	}
	
	// 선생님의 수업함
	@GetMapping("/lessonbox")
	public String getLessonBox(Model model, HttpSession session,
		@PageableDefault(size = 3) Pageable paging, 
		@RequestParam(required = false, defaultValue = "제목") String type,
        @RequestParam(required = false, defaultValue = "") String searchword) {
		
		//keywords 값 잘넘어옵니다 확인완료
		System.out.println("searchword 값 확인 : " + searchword);
		//order 값 잘 넘어옵니다 확인완료
		System.out.println("type 값 확인 : " + type);
		
		//세션에 저장된 값으로 넘겨버리기
		Integer tempmemIdInt = (Integer) session.getAttribute("memIdInt");
		System.out.println("memIdInt : "+tempmemIdInt);
		Page<Map<String, Object>> lessonBoxTemp = null;
      
		if(searchword.equals("") ) {
			lessonBoxTemp = calRepo.getLessonBox(paging, tempmemIdInt);
		} else if(type.equals("vc_title")) {
			System.out.println("vc_title 검색");
			lessonBoxTemp = calRepo.getLessonBoxVctitle(paging, tempmemIdInt, searchword);
		} else if(type.equals("cal_start")) {
			System.out.println("cal_start 검색");
			lessonBoxTemp = calRepo.getLessonBoxCalstart(paging, tempmemIdInt, searchword);
		} else if(type.equals("t_name")) {
			System.out.println("t_name 검색");
			lessonBoxTemp = calRepo.getLessonBoxTcname(paging, tempmemIdInt, searchword);
		}
		
		for (Map<String, Object> a : lessonBoxTemp.getContent()) {
			System.out.println("cal_start : " + a.get("cal_start"));
			System.out.println("vctitle : " + a.get("vctitle"));
			System.out.println("tcname : " + a.get("tcname"));
		}
		
		List<VchatRecordVO> tutorBoxRecord = vchatRecordRepo.findByMemIdInt(tempmemIdInt);
		List<VchatFileVO> tutorBoxFile = vchatFileRepo.findByMemIdInt(tempmemIdInt);
		
		for (VchatRecordVO vo : tutorBoxRecord) {
			System.out.println("OrigRecName : " + vo.getOrigRecName());
			System.out.println("CalId : " + vo.getCalId());
		}
		
		for (VchatFileVO vo : tutorBoxFile) {
			System.out.println("OrigFileName : " + vo.getOrigFileName());
			System.out.println("CalId : " + vo.getCalId());
		}

		//현재페이지
		int pageNumber=((Slice<Map<String, Object>>) lessonBoxTemp).getPageable().getPageNumber();
		//총페이지수
		int totalPages=((Page<Map<String, Object>>) lessonBoxTemp).getTotalPages(); //검색에따라 10개면 10개..
		int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
		//시작하는 블록
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
		//끝나는 블록
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

		// System.out.println("TutorBoxList : " + mypageTutorBoxList.getContent());

		//각 값들을 jsp 파일에 붙이기
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("mypageTutorBoxList", lessonBoxTemp.getContent()); 
		model.addAttribute("tutorRecord", tutorBoxRecord); 
		model.addAttribute("tutorFile", tutorBoxFile); 

		return "mypage/lessonbox";
	}
	
//-------------------------------------------------------------------------------------------------------------------------------
	
	// mypage에 있는 회원의 예약 달력과 예약한 방 출력
	@RequestMapping(value = "/tutorReserve", method = RequestMethod.GET)
	//ModelAndView를 이용하여 구현
	public ModelAndView getTeacherCalendarList(HttpServletRequest request, HttpSession session) {
		
		Integer teacherId = (Integer) session.getAttribute("teacherId");
		
		String viewpage = "/mypage/tutorReserve";
		List<Map<String, Object>> calendarTemp = null;
		try {
			calendarTemp = calRepo.teacherCalendarSearch(teacherId);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 새로운 리스트를 준비
		List<HashMap<String, Object>> calendar = new ArrayList<HashMap<String, Object>>();
		
		// 새로운 HashMap을 생성하고 차례대로 값을 집어넣기
		for(Map<String, Object> m : calendarTemp) {
			System.out.println("calid : " + m.get("calid"));
			
			HashMap<String, Object> HashTemp = new HashMap<String, Object> ();
			HashTemp.put("calid", m.get("calid"));
			HashTemp.put("caltitle", m.get("caltitle"));
			HashTemp.put("calstart", m.get("calstart"));
			HashTemp.put("calreserve", m.get("calreserve"));
			HashTemp.put("calend", m.get("calend"));
			HashTemp.put("memidint", m.get("memidint"));
			HashTemp.put("roomid", m.get("roomid"));
			HashTemp.put("tid", m.get("tid"));
			HashTemp.put("vctitle", m.get("vctitle"));
			HashTemp.put("tcpic", m.get("tcpic"));
			HashTemp.put("tcname", m.get("tcname"));
			HashTemp.put("memprofile", m.get("memprofile"));
			HashTemp.put("memidstring", m.get("memidstring"));
			
			//원하는 데이터 포맷 지정
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 a h:mm"); 
			String dateTemp = simpleDateFormat.format(m.get("calstart"));
			System.out.println("date format : " + dateTemp);
			// 새로운 형식의 날짜를 HashMap에 추가
			HashTemp.put("calstartSTR", dateTemp);
			
			calendar.add(HashTemp);
		}
		
		request.setAttribute("calendarList", calendar);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(viewpage);
		return mv;
	}
	
	// 선생님의 수업함
	@GetMapping("/tutorBox")
	public String getTutorBox(Model model, HttpSession session,
		@PageableDefault(size = 3) Pageable paging, 
		@RequestParam(required = false, defaultValue = "제목") String type,
        @RequestParam(required = false, defaultValue = "") String searchword) {
		
		//keywords 값 잘넘어옵니다 확인완료
		System.out.println("searchword 값 확인 : " + searchword);
		//order 값 잘 넘어옵니다 확인완료
		System.out.println("type 값 확인 : " + type);
		
		//세션에 저장된 값으로 넘겨버리기
		Integer tempTeacherId = (Integer) session.getAttribute("teacherId");
		System.out.println("teacherId : "+tempTeacherId);
		Page<Map<String, Object>> tutorBoxTemp = null;
      
		if(searchword.equals("") ) {
			tutorBoxTemp = calRepo.getTutorBox(paging, tempTeacherId);
		} else if(type.equals("vc_title")) {
			System.out.println("vc_title 검색");
			tutorBoxTemp = calRepo.getTutorBoxVctitle(paging, tempTeacherId, searchword);
		} else if(type.equals("cal_start")) {
			System.out.println("cal_start 검색");
			tutorBoxTemp = calRepo.getTutorBoxCalstart(paging, tempTeacherId, searchword);
		} else if(type.equals("t_name")) {
			System.out.println("t_name 검색");
			tutorBoxTemp = calRepo.getTutorBoxTcname(paging, tempTeacherId, searchword);
		}
		
		for (Map<String, Object> a : tutorBoxTemp.getContent()) {
			System.out.println("cal_start : " + a.get("cal_start"));
			System.out.println("vctitle : " + a.get("vctitle"));
			System.out.println("tcname : " + a.get("tcname"));
		}
		
		List<VchatRecordVO> tutorBoxRecord = vchatRecordRepo.findByTeacherId(tempTeacherId);
		List<VchatFileVO> tutorBoxFile = vchatFileRepo.findByTeacherId(tempTeacherId);
		
		for (VchatRecordVO vo : tutorBoxRecord) {
			System.out.println("OrigRecName : " + vo.getOrigRecName());
			System.out.println("CalId : " + vo.getCalId());
		}
		
		for (VchatFileVO vo : tutorBoxFile) {
			System.out.println("OrigFileName : " + vo.getOrigFileName());
			System.out.println("CalId : " + vo.getCalId());
		}

		//현재페이지
		int pageNumber=((Slice<Map<String, Object>>) tutorBoxTemp).getPageable().getPageNumber();
		//총페이지수
		int totalPages=((Page<Map<String, Object>>) tutorBoxTemp).getTotalPages(); //검색에따라 10개면 10개..
		int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
		//시작하는 블록
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
		//끝나는 블록
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

		// System.out.println("TutorBoxList : " + mypageTutorBoxList.getContent());

		//각 값들을 jsp 파일에 붙이기
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("mypageTutorBoxList", tutorBoxTemp.getContent()); 
		model.addAttribute("tutorRecord", tutorBoxRecord); 
		model.addAttribute("tutorFile", tutorBoxFile); 

		return "mypage/tutorBox";
	}
	
	// 자료 파일 업로드
	@RequestMapping("/uploadFile")
	public String insertFile(@RequestParam("file") List<MultipartFile> files, VchatFileVO dto) throws IOException {
		
		try {
			System.out.println("insertFile 요청");
			System.out.println("VchatFileVO : " + dto);
			
			for (MultipartFile file :files) {
				String origFilename = file.getOriginalFilename();
				System.out.println("origFilename : " + origFilename);
				
				// 파일첨부를한경우에만
				if( origFilename != null && !origFilename.equals(""))
				{   	

					String filename = new MD5Generator(origFilename).toString();
					/* 실행되는위치의 'files' 폴더에파일이저장됩니다. */
					String savePath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\assets\\files\\files";
					/* 파일이저장되는폴더가없으면폴더를생성합니다. */
					if (!new File(savePath).exists()) {
						try {
							new File(savePath).mkdir();
						}
						catch(Exception e) {
							e.getStackTrace();
						}
					}
					String filepath = savePath + "\\" + filename;
					System.out.println("filepath : "+filepath);

					file.transferTo(new File(filepath));

					VchatFileVO vo = new VchatFileVO();
					
					vo.setOrigFileName(origFilename);
					vo.setFileName(filename);
					vo.setFilePath(filepath);
					vo.setCalId(dto.getCalId());
					vo.setMemIdInt(dto.getMemIdInt());
					vo.setTeacherId(dto.getTeacherId());

					vchatFileRepo.save(vo);
					System.out.println("파일첨부인경우");
				}else {
					System.out.println("파일첨부가아닌경우");
				}
			
			}
			
		} catch(Exception e) {
			System.out.println("파일업로드실패:" + e.getMessage());
			e.printStackTrace();
		}
		
		return"redirect:/mypage/tutorBox";

	}
	
	// 자료 파일 업로드
	@RequestMapping("/uploadRecord")
	@ResponseBody
	public void insertRecord(@RequestParam("file") List<MultipartFile> files, VchatRecordVO dto) throws IOException {
		
		try {
			System.out.println("uploadRecord 요청");
			System.out.println("VchatRecordVO : " + dto);
			
			for (MultipartFile file :files) {
				String origFilename = file.getOriginalFilename();
				System.out.println("origFilename : " + origFilename);
				
				// 파일첨부를한경우에만
				if( origFilename != null && !origFilename.equals(""))
				{   	

					String filename = new MD5Generator(origFilename).toString();
					/* 실행되는위치의 'files' 폴더에파일이저장됩니다. */
					String savePath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\assets\\files\\rec";
					/* 파일이저장되는폴더가없으면폴더를생성합니다. */
					if (!new File(savePath).exists()) {
						try {
							new File(savePath).mkdir();
						}
						catch(Exception e) {
							e.getStackTrace();
						}
					}
					String filepath = savePath + "\\" + filename;
					System.out.println("filepath : "+filepath);

					file.transferTo(new File(filepath));

					VchatRecordVO vo = new VchatRecordVO();
					
					vo.setOrigRecName(origFilename);
					vo.setRecName(filename);
					vo.setRecPath(filepath);
					vo.setCalId(dto.getCalId());
					vo.setMemIdInt(dto.getMemIdInt());
					vo.setTeacherId(dto.getTeacherId());

					vchatRecordRepo.save(vo);
					System.out.println("웹캠 동영상 첨부인경우");
				}else {
					System.out.println("웹캠 동영상 첨부가아닌경우");
				}
			
			}
			
		} catch(Exception e) {
			System.out.println("웹캠 동영상 업로드실패:" + e.getMessage());
			e.printStackTrace();
		}
		
	}
	
	// 녹화 영상 보여주는 창을 띄울 때 사용
	@RequestMapping("/video")
	public void showVideo(String loc, Model m) {
		System.out.println("loc : " + loc);
		m.addAttribute("loc", loc);
	}
	
	// 예약 취소 (회원)
	@RequestMapping("/memberDeleteReservation")
	public String deleteMemberReservation(Integer calId) {
		calRepo.deleteReservation(calId);
		// 추후에 마이페이지로 리턴값수정해야함
		return "redirect:/mypage/lessonreserve";
	}
	
	// 예약 취소 (선생님)
	@RequestMapping("/teacherDeleteReservation")
	public String deleteTeacherReservation(Integer calId) {
		calRepo.deleteReservation(calId);
		// 추후에 마이페이지로 리턴값수정해야함
		return "redirect:/mypage/tutorReserve";
	}

	// 예약 등록(선생님, 경주)
	@RequestMapping("/insertReservation")
	public String insertReservation(CalendarVO vo, HttpSession session) {
		
//		Date test = vo.getCalStart();
//		System.out.println(test);
//		String test2 = test.toString();
//		System.out.println(test2);
//		String test3 = test2.replace("T", " ");
//		System.out.println(test3);
		
		
		calService.insertReservation(vo);
		return "redirect:/mypage/tutorReserve";
	}

}
