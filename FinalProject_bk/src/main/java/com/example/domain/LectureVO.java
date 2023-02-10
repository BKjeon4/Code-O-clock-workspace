package com.example.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="vchat_class")
public class LectureVO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="vc_id")
	private Integer vcId;
	
	@Column(name="t_id")
	private Integer tcId;
	
	@Column(name="t_name") //찬주추가함
	private String teacherName;
	
	@Column(name="t_pic") //찬주추가함
	private String teacherPic;
	
	@Column(name="vc_title")
	private String vcTitle;
	
	
	
	private String vc_intro;
	
	private String vc_content;
	
	@Column(name="vc_keyword")
	private String vcKeyword;
	
	private String vc_pic;

	@Column(name="vc_days")
	private Date vcDays; //찬주 변경 교육등록날짜

	//각 교육별 평균 점이 달라야 하기에 추가
	private Integer avg;



}
