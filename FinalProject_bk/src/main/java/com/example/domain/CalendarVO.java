	package com.example.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
@Table(name="calendar")
public class CalendarVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer calId;
	
	//@DateTimeFormat(pattern = "yyyy-MM-dd HH:mi")
	private String calStart;
	//@DateTimeFormat(pattern = "yyyy-MM-dd HH:mi")
	private String calEnd;
	
	
	@Column(name="t_id")
	private Integer teacherId;
	
	private Integer calReserve;
	
	private Integer vcId;
	
	@Column(name="m_idint")
	private Integer memIdInt;
	
	private String roomId;
	
	private Date checkoutDate;
	
	private String checkoutName;	
	
	private Integer price;


}
