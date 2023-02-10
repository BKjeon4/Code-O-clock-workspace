package com.example.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="news")
//롬복을 통해 getter,setter이용, DB의 news테이블 이용
public class NewsVO {										// 뉴스게시판
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	//PK키인 newsId에 @ID주기
	private Integer newsId;									// 뉴스번호
	
	private String newsTitle;								// 뉴스제목
	private String newsShort;								// 뉴스내용
	private Date newsDate;									// 뉴스게시일
	private String newsContent;								// 뉴스본문
	private String newsImg;									// 뉴스이미지
	private String newsMan;									// 기자이름
	
}
