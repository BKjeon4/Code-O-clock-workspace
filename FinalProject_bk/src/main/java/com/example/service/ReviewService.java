package com.example.service;

import java.util.List;

import com.example.domain.ReviewVO;

public interface ReviewService {
   
   
    public void saveRV (ReviewVO vo);
    

    public  List<Object[]> avgStar();
    

    //Page<ReviewVO> a(Pageable paging, String temp_ed_id);

    
    public  List<Object[]> avgStarvc();
    
    /*** 관리자 페이지 ***/
    //리뷰리스트 출력
    public List<ReviewVO> reviewList();
}