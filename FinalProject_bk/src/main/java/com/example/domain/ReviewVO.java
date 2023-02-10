package com.example.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="review")
public class ReviewVO {										//리뷰
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name="re_id")
   private Integer reId;									//리뷰번호
   
   @Column(name="m_idint")
   private Integer memIdInt;								//회원아이디
   
   @Column(name="m_idstring")
   private String memIdString;								//회원문자아이디
   
   @Column(name="re_date")
   private Date reDate; 									//작성날짜
   
   
   private Integer star; 									//별점
   
   @Column(name="re_content")
   private String reContent; 								//리뷰작성글
   
   @Column(name="vc_id")
   private Integer vcId;									//화상수업번호
   
   @Column(name="ed_id")
   private Integer edId;									//교육과정번호
   
   @PrePersist
	public void beforeCreate() {
	   reDate = new Date();
	}
   

}