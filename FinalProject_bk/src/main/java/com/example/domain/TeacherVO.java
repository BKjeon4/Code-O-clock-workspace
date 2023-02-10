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
@Table(name="vchat_teacher")
public class TeacherVO {
	
	//모두 컬럼 변경해놓음 
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="t_id")
	private Integer teacherId;
	
	
	@Column(name="t_pic" )
	private String tcPic;
	
	
	@Column(name="t_name")
	private String tcName;
	
	
	@Column(name="t_intro")
	private String tcIntro;
	
	
	@Column(name="t_spec" )
	private String tcSpec;
	
	
	@Column(name="t_keyword" )
	private String tcKeyword;
	
	
	@Column(name="t_regdate")
	private Date tcDate;

	@Column(name="t_tf")
	private Integer tcTruefalse;
	
	
	@PrePersist
	public void beforeCreate() {
		tcDate = new Date();
	}
	
}
