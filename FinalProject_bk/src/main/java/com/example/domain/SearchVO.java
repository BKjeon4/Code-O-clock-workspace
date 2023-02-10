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

@Entity
@Data
@Table(name="search")

public class SearchVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="s_id")
	private Integer s_id;

	private String keywords;

	@Column(name="m_idint")
	private Integer mIdInt;

}
