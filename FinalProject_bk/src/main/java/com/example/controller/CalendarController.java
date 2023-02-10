package com.example.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.CalendarVO;
import com.example.persistence.CalendarRepository;


@Controller
@RequestMapping("/lecture")
public class CalendarController {
	
	//서비스, 서비스임플 단을 통하지않고 바로 레포지토리 단을 통하여 코드실행
	@Autowired
	private CalendarRepository calRepo;
	
	
	//DB에 입력된 강사 스케쥴을 달력에 구현하는 과정
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	//ModelAndView를 이용하여 구현
	public String getCalendarList(HttpServletRequest request, Model m, Integer vcId, Integer tId) {
//		System.out.println("/academy/calendar");
		String viewpage = "/lecture/calendar";
		List<CalendarVO> calendar = null;
		try {
			calendar = calRepo.CalendarSearch(tId);
			request.setAttribute("calendarList", calendar);
			m.addAttribute("vcId", vcId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 결과 확인
		for(CalendarVO vo : calendar) {
			System.out.println(vo);
		}
		return viewpage;
	}
	
	//스윗알럿에 뜬 예약확인창에 예약버튼을 눌를경우 실행
	@RequestMapping("/reservation")
	public String reservation(Integer calId, Integer vcId, HttpSession session) {
		System.out.println("vcId : " + vcId);
		String tempidString = (String) session.getAttribute("memIdString");
		Integer tempidInt = (Integer) session.getAttribute("memIdInt");
		String uuid = UUID.randomUUID().toString();
		calRepo.reservation(calId, tempidString, uuid, vcId, tempidInt);
		
		// 추후에 마이페이지로 리턴값수정해야함
		return "redirect:/mypage/lessonreserve";
	}
	
	

}
