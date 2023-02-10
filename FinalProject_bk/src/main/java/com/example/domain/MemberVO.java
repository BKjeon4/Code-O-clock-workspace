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
@Table(name="member")
public class MemberVO {											//회원가입
   
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name="m_idint")
   private Integer memIdInt;									// 회원 아이디
   
   @Column(name="m_idstring", unique=true)
   private String memIdString;									// 회원 문자 아이디
   
   @Column(name="m_pass")										// 회원 비밀번호
   private String memPass;										
   
   @Column(name="m_name")				
   private String memName;										// 회원 이름(본래값에서 db추가)
   
   @Column(name="m_nickname")
   private String memNickname;									// 회원 닉네임
   
   @Column(name="m_tel")										
   private String memTel;										// 핸드폰번호

   private String m_post;										// 우편번호	
   private String m_addr;										// 주소
   private String m_addr_sub;									// 상세 주소

   @Column(name="m_email")
   private String memEmail;										//이메일
   
   private String m_profile;
   
   private Integer t_id;									   	// 선생님 번호
   // @Column(name="t_id")
   // private Integer teacherId;
   

   
}