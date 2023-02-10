package com.example.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name="honest_answer")						
public class HonestAnswerVO {						//테이블:솔직답변
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ha_id")
	private Integer haId;							//솔직답변 번호
	
	@Column(name="m_idint")
	private Integer memIdInt;						//회원아이디
	
	private String ha_a;							//답변
	
	@Column(name="ha_date")
	private Date haDate;
	
	@Column(name="hq_id")
	private Integer hqId;							//솔직질문 변호
	
	@PrePersist
	public void beforeCreate() {
		haDate = new Date();
	}
	
}
