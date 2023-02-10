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
@Table(name="education")
public class EducationVO {								      	//테이블:국비/부트 교육과정
   
	@Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name="ed_id")
   private Integer edId;
   
   //찬주변경 교육과정제목
   @Column(name="ed_title")
   private String edTitle;
   //찬주변경 학원이름
   @Column(name="ed_name")
   private String edName;
   
   @Column(name="ed_enlist_date")
   private String edEnlistDate;
   
   @Column(name="ed_start_date")
   private String edStartDate;
   
   @Column(name="ed_end_date")
   private String edEndDate;
   
   @Column(name="ed_addr")
   private String edAddr;
   
   @Column(name="ed_price")
   private String edPrice; //수강비
   
   @Column(name="ed_intro")
   private String edIntro;
   
   //0108 일요일 찬주추가
   
   @Column(name="ed_keyword")
   private String edKeyword;
   
   @Column(name="ed_time")
   private String edTime;
   
   @Column(name="ed_comm")
   private String edComm;
   
   @Column(name="ed_curriculum")
   private String edCurriculum;
   
   @Column(name="ed_tf")
   private long edTf;
   
   @Column(name="ed_pic")
   private String edPic;
   
   @Column(name="ed_days")
   private String edDays; //찬주 변경 학원등록날짜
   
   private String edUrl;
   
   //각 교육별 평균 점이 달라야 하기에 추가
   private Integer avg;								      	//별점평균
}