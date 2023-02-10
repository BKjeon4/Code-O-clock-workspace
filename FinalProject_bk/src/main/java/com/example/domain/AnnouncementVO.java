package com.example.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="Announcement")
public class AnnouncementVO {								//공지게시판

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer anId;									// 공지 번호
	
	private String anTitle;									// 공지 제목
	
	private String anContent;								// 공지 내용
	
	private Date anDate;									// 공지 날짜
	
	private String adId;									// 관리자 아이디
	
	
	//JPA에서 DB로 자동으로 DATE에 오늘 날짜 쓰기!
	@PrePersist
	public void beforeCreate() {
		anDate = new Date();
	}
	
	
}
