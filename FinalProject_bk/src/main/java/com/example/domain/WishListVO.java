package com.example.domain;

import java.time.LocalDateTime;

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
@Table(name="Wishlist")
public class WishListVO {								//위시리스트(교육과정용)

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="w_id")
	private Integer wId;								//위시리스트 번호
	
	@Column(name="m_idint")
	private Integer mIdint;								//회원아이디
	
	@Column(name="ed_id")
	private Integer edId;								//교육과정 번호
	
}
