package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.LectureVO;
import com.example.domain.MemberVO;
import com.example.domain.TeacherVO;
import com.example.persistence.LectureRepository;
import com.example.persistence.TeacherRepository;
import com.example.service.TeacherService;

@Controller
@RequestMapping("/lecture")
public class TeacherController {
	

	   //@Autowired
	  // private TeacherService teacherService;

	   
	   @Autowired
	   private TeacherRepository teacherRepository;
	   
	   @Autowired
	   private LectureRepository lectureRepository;
	   
	   
	   
	   //선생님 리스트 얻어오기 및 페이징
	   @GetMapping("/tutor")
	   public String getTeacherList(Model m ,  
			   @PageableDefault(size = 3, direction = Sort.Direction.DESC) Pageable paging,
			   @RequestParam(required = false, defaultValue = "") String keywords) {
		
		   //keywords 값 잘넘어옵니다 확인완료
		      System.out.println("선생님 keywords 값 확인 : " + keywords);
		   
		   
		      Page<TeacherVO> tList = teacherRepository.AllTeacherAndPagingAndSearch(paging, keywords);
		      
		      //현재페이지
		      int pageNumber=tList.getPageable().getPageNumber();
		      //총페이지수
		      int totalPages=tList.getTotalPages(); //검색에따라 10개면 10개..
		      int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
		      //시작하는 블록
		      int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
		      //끝나는 블록
		      int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
		      endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;
		      
		      m.addAttribute("pageNumber", pageNumber);
		      m.addAttribute("totalPages", totalPages);
		      m.addAttribute("startBlockPage", startBlockPage);
		      m.addAttribute("endBlockPage", endBlockPage);
		      m.addAttribute("teacherList", tList.getContent());
		      
		      //확인용
		      for(TeacherVO temp :tList.getContent() ) {
		    	  System.out.println(temp);
		      }
		      
		   return "/lecture/tutor";
	   }
	   
	   
	   
	   
	   
	   //선생님 상세페이지
	   @GetMapping("/tutor-details")
	   public String getDetailsTeacher(Model m, Integer teacherId) {
		   
		   
		   
		   TeacherVO result = teacherRepository.findByTeacherId(teacherId);
		   m.addAttribute("tListDetails", result);
		   
		   
		  // TeacherVO result = teacherService.joinTeacher(teacherId);
		  // m.addAttribute("tListDetails", result);
		   
		  List<LectureVO> result2 = lectureRepository.findByTcId(teacherId);
		  m.addAttribute("lecture", result2);
		   
			return "/lecture/tutor-details";

	   }
	   
	   
	   
	   
	   

	   
	   
	   
	   
	   
	   
	

}
