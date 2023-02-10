package com.example.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ReviewVO;
import com.example.persistence.ReviewRepository;
import com.example.service.ReviewService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
@RequestMapping("/academy")
public class ReviewController {


   
	
	
     @Autowired
     private ReviewService reviewService;
     
     @Autowired
     private ReviewRepository  reviewRepository;

     
     
     
     
     //국비/부트 부분
     //리뷰 등록하면 아래 붙도록 ajax gson 처리 
     @GetMapping("/insertRV")
     @ResponseBody //ajax 쓰려고 리퀘스트 바디
     public String insertRV(ReviewVO vo, 
           @RequestParam String edId,@PageableDefault(size = 3) Pageable paging,String re) {
        System.out.println("리뷰뷰뷴 : " +   vo);
        
        reviewService.saveRV(vo);

        
        //가져오는거 넣기
        String temp_ed_id = String.valueOf(vo.getEdId());
        System.out.println(temp_ed_id);
        Page<ReviewVO> list = reviewRepository.getReviewAndPaging(paging,temp_ed_id );
        List<ReviewVO> reviewList = list.getContent();
        Gson gson = new Gson();
        JsonArray jArray = new JsonArray();
        
        System.out.println("겟컨확인"+ reviewList.size());
         //for(int i=0 ; i<reviewList.size(); i++) {
        for( ReviewVO rvo : reviewList ) {
            
            JsonObject object = new JsonObject();
 
            object.addProperty("memIdString", String.valueOf(rvo.getMemIdString()));
            object.addProperty("star", String.valueOf(rvo.getStar()));
            object.addProperty("reDate", String.valueOf(rvo.getReDate()));
            object.addProperty("reContent", String.valueOf(rvo.getReContent()));
            
            
            jArray.add(object);
            //System.out.println("잘붙었나?");
         }
         
         String json = gson.toJson(jArray);
        // select
        // json
        // 문자열로 변환해서 리턴
         System.out.println("json의 값은???" + json);
         return json ;   //리턴 ok값은 섯세스의 리절트라는 이름으로 보내봄  
     }//end of insertRV
     
     
     
     
     ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     
     
     
     //국비 / 부트부분
      //리뷰부분 페이징 ajax
     @GetMapping("/insertRVPajing")
     @ResponseBody //ajax 쓰려고 리퀘스트 바디
     public String insertRVPajing(ReviewVO vo, Model m,	
             @RequestParam String edId,@PageableDefault(size = 3) Pageable paging, String re) {
          System.out.println("리뷰뷰뷴 : " +   vo);
          

          //가져오는거 넣기
          String temp_ed_id = String.valueOf(vo.getEdId());

          System.out.println(temp_ed_id);
          Page<ReviewVO> list = reviewRepository.getReviewAndPaging(paging,temp_ed_id );
          List<ReviewVO> reviewList = list.getContent();

          //현재페이지
          int pageNumber=list.getPageable().getPageNumber();
          //총페이지수
          int totalPages=list.getTotalPages(); //검색에따라 10개면 10개..
          int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5   
          //시작하는 블록
          int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6
          //끝나는 블록
          int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10.
          endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

          Gson gson = new Gson();
          JsonArray jArray = new JsonArray();
          
          System.out.println("겟컨확인"+ reviewList.size());
           //for(int i=0 ; i<reviewList.size(); i++) {
          for( ReviewVO rvo : reviewList ) {
              
              JsonObject object = new JsonObject();

              object.addProperty("memIdString", String.valueOf(rvo.getMemIdString()));
              object.addProperty("star", String.valueOf(rvo.getStar()));
              object.addProperty("reDate", String.valueOf(rvo.getReDate()));
              object.addProperty("reContent", String.valueOf(rvo.getReContent()));
              object.addProperty("pageNumber", String.valueOf(pageNumber));
              object.addProperty("totalPages", String.valueOf(totalPages));
              object.addProperty("startBlockPage",String.valueOf(startBlockPage));
              object.addProperty("endBlockPage", String.valueOf(endBlockPage));
       
              object.addProperty("getTotalElements",list.getTotalElements());
              
              
              jArray.add(object);
              //System.out.println("잘붙었나?");
           }
           
           String json = gson.toJson(jArray);
          // select
          // json
          // 문자열로 변환해서 리턴
           System.out.println("json의 값은???" + json);
           return json ;   //리턴 ok값은 섯세스의 리절트라는 이름으로 보내봄  
 
     } //end of insertRVPajing
   
     
   
     
     //-------------------------------------------------------------------------------------
     
     
     

     
     
     
}
     
     
     