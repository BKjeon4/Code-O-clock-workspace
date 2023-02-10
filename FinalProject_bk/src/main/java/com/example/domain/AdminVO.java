package com.example.domain;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="admin")
public class AdminVO {										//관리자 회원가입
	
	@Id
	private String adId;									// 관리자 아이디
				 
	private String adPass;									// 관리자 비밀번호
						
	private String adTel;									// 공지 내용

	private String adEmail;									// 이메일
	
	
}
