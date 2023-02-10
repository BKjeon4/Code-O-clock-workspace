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
@Table(name="honest_question")
public class HonestQuestionVO {									// 솔직질문
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="hq_id")
	private Integer hqId;
	
	private String hq_q;
	private String hq_title;
	private String hq_keyword;
	private String hq_category;
	private Date hq_date;
	private Integer hq_cnt;
	
	@Column(name="m_idint")
	private Integer memIdInt;
	
	@PrePersist
	public void beforeCreate() {
		hq_date = new Date();
		hq_cnt = 0;
	}

}
