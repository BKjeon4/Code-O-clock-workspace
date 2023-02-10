

   package com.example.domain;

import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="pay")
public class PayVO {										//결제정보

		@Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private Integer pId;									//결제번호
	   
	   @Column(name="m_idint")
	   private Integer mIdint;								//회원아이디
	   
	   private Date pDate;									//결제날짜
	   
	   private Integer pTotal;								//결제금액
	   
	   private String pInfo;								//결제정보
	   
	   private boolean pReturn;								//환불여부
}
