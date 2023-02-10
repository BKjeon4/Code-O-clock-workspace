package com.example.controller;


import java.util.Arrays;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.EducationVO;
import com.example.domain.ReviewVO;
import com.example.persistence.EducationRepository;
import com.example.persistence.JjimRepository;
import com.example.persistence.RankRepository;
import com.example.persistence.ReviewRepository;
import com.example.persistence.WishListRepository;
import com.example.service.EducationService;
import com.example.service.ReviewService;


@Controller
@RequestMapping("/academy")
public class EducationController {

   @Autowired
   private EducationService eduService;

   @Autowired
   private EducationRepository eduRepo;

   @Autowired
   private ReviewService reviewService;

   @Autowired
   private ReviewRepository reviewRepository;

   @Autowired
   private RankRepository rankRepo;
   
   @Autowired
   private JjimRepository jjimRepo;
   
   @Autowired
   private WishListRepository wishRepo;
   
   
   

   
   //0128
   //인덱스에서최신등록순
   @GetMapping("/index")
 
   public String getNewIndex(Model m, 
      @PageableDefault(size = 6, direction = Sort.Direction.DESC) Pageable paging, 
      @RequestParam(required = false, defaultValue = "") String order,
      @RequestParam(required = false, defaultValue = "") String keywords,
      HttpSession session){
	   
	  Integer memIdInt = (Integer) session.getAttribute("memIdInt");
      List<Object[]> wlist = wishRepo.findByMemIdInt(memIdInt);
      List<Object[]> jlist = jjimRepo.findByMemIdIntlec(memIdInt);
      
      for(Object[] temp : wlist) {
    	  System.out.println("wlist : " + Arrays.toString(temp));
      }
      
      for(Object[] temp : jlist) {
    	  System.out.println("jlist : " + Arrays.toString(temp));
      }
      
      m.addAttribute("wishList", wlist);
      m.addAttribute("jjimList", jlist);
      
      //keywords 값 잘넘어옵니다 확인완료
      System.out.println("keywords 값 확인 : " + keywords);
      //order 값 잘 넘어옵니다 확인완료
      System.out.println("order 값 확인:"+ order);
      
      Page<EducationVO> elist = null;
      
      elist = eduRepo.getNewIndex(paging, keywords, order);
     
      
     
      //각 값들을 jsp 파일에 붙이기
   
      m.addAttribute("academyList", elist.getContent());
      
      //찬주 리스트 별점평균용
      List<Object[]> avg = reviewService.avgStar();
      System.out.println("list.size():" + avg.size());   
      m.addAttribute("avg",avg);
      
      //학원랭킹 1~3위(경주)
      //1위
      m.addAttribute("rankFirst", rankRepo.rankQueryFirst());
      //2위
      m.addAttribute("rankSecond", rankRepo.rankQuerySecond());
      //3위
      m.addAttribute("rankThird", rankRepo.rankQueryThird());
    

      //리턴페이지의 디폴트 값
      return "/academy/index";
   }//end of getAcademyList
   
   


   
   
  

   
   
   //0106 학원리스트 출력 & 모든 검색부분 페이징 까지 완료 (경호+찬주)
   @GetMapping("/course-sidebar")
   //한페이지에 들어가는 수는 6개
   //@RequestParam 으로  order, keywords 받아와 사용가능
   public String getAcademyList(Model m, HttpSession session,
         @PageableDefault(size = 4, direction = Sort.Direction.DESC) Pageable paging, 
         @RequestParam(required = false, defaultValue = "") String order,
         @RequestParam(required = false, defaultValue = "") String keywords){
      
      // service에 <<검색 시 검색 시간+키워드 저장>>
      // DB에 검색어 테이블 만들기 -> 자바 기초 / 자바 국비
      Integer mIdInt = (Integer) session.getAttribute("memIdInt");
      eduService.insertSearch(keywords, mIdInt );
      
      //keywords 값 잘넘어옵니다 확인완료
      System.out.println("keywords 값 확인 : " + keywords);
      //order 값 잘 넘어옵니다 확인완료
      System.out.println("order 값 확인:"+ order);
      
      Page<EducationVO> elist = null;
      if(order.equals("") ) {
       elist = eduRepo.AllSearchAndPagingQuery(paging, keywords, order);
      }else if(order.equals("star")) {
       elist = eduRepo.starDesc(paging, keywords, order);
      }else if(order.equals("new")) {
         elist = eduRepo.AllSearchAndPagingQuery(paging, keywords, order);
      }
      
      //현재페이지
      int pageNumber=elist.getPageable().getPageNumber();
      //총페이지수
      int totalPages=elist.getTotalPages(); //검색에따라 10개면 10개..
      int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
      //시작하는 블록
      int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
      //끝나는 블록
      int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
      endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;
      //각 값들을 jsp 파일에 붙이기
      m.addAttribute("pageNumber", pageNumber);
      m.addAttribute("totalPages", totalPages);
      m.addAttribute("startBlockPage", startBlockPage);
      m.addAttribute("endBlockPage", endBlockPage);
      m.addAttribute("academyList", elist.getContent());
      m.addAttribute("getTotalElements",elist.getTotalElements());
      //찬주 리스트 별점평균용
      List<Object[]> avg = reviewService.avgStar();
      System.out.println("list.size():" + avg.size());   
      m.addAttribute("avg",avg);

      //리턴페이지의 디폴트 값
      return "/academy/course-sidebar";
   }//end of getAcademyList
   



   
   //기본상세페이지 정보 제공 및 리뷰까지 제공
   @GetMapping("/course-details")
   public String getBoard(EducationVO vo, Model model,
         @RequestParam(required = false, defaultValue = "") String edId,
         @PageableDefault(size = 3, direction = Sort.Direction.DESC) Pageable paging){

      //기본 학원디테일 정보
      EducationVO result = eduService.getBoard(vo);
      String[] a = result.getEdCurriculum().split("\\+");
      model.addAttribute("title", a);
      model.addAttribute("education", result); // Model 정보 저장  
      model.addAttribute("edPic", result.getEdPic());
      System.out.println("re 값 확인:"+ edId);
      System.out.println("사진이름:" + result.getEdPic());

       String temp_ed_id = String.valueOf(vo.getEdId());
        System.out.println(temp_ed_id);
      //상세페이지 리뷰정보용 + 페이징
      Page<ReviewVO> reviewList = reviewRepository.getReviewAndPaging(paging, temp_ed_id);
      //현재페이지
      int pageNumber=((Slice<ReviewVO>) reviewList).getPageable().getPageNumber();
      //총페이지수
      int totalPages=((Page<ReviewVO>) reviewList).getTotalPages(); //검색에따라 10개면 10개..
      int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
      //시작하는 블록
      int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
      //끝나는 블록
      int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
      endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

      //리스트,상세페이지 별점정보용
      List<Object[]>avg = reviewService.avgStar();  // List<HashMap>
      // 반복문
      //avg 이녀석이 Object[] 로 넘어와서 값잘 넘어오나 확인해보는 for문
      for(Object[] i : avg) {
         System.out.println(i[0] +":" + i[1]);
      }
      model.addAttribute("avg", avg);
      
      //각 값들을 jsp 파일에 붙이기
      model.addAttribute("pageNumber", pageNumber);
      model.addAttribute("totalPages", totalPages);
      model.addAttribute("startBlockPage", startBlockPage);
      model.addAttribute("endBlockPage", endBlockPage);
      model.addAttribute("reviewList", reviewList.getContent()); 

      return "academy/course-details";
   }//end of getBoard
   

}