package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.EducationVO;
import com.example.domain.NewsVO;
import com.example.persistence.NewsRepository;

@Service
//News서비스임플을 NewsSerivce와 연결
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsRepository newsRepo;
	
	//뉴스리스트를 finaAll를 이용하여 리스트에 집어넣어 띄우기
	@Override
	public List<NewsVO> getNewsList(NewsVO vo){
		List<NewsVO> list = (List<NewsVO>) newsRepo.findAll();
		return list;
	}
	
	//뉴스상세페이지를 getNewsId를 통해 id에 맞게 해당페이지띄우기
	@Override
	public NewsVO getNews(NewsVO vo) {
		return newsRepo.findById(vo.getNewsId()).get();
	}
	
}
