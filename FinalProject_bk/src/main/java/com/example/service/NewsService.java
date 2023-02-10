package com.example.service;

import java.util.List;

import com.example.domain.NewsVO;

public interface NewsService {
	
	//뉴스리스트 생성하는 서비스
	List<NewsVO> getNewsList(NewsVO vo);
	
	//뉴스상세페이지를 띄우는 서비스
	NewsVO getNews(NewsVO vo);
	
}
