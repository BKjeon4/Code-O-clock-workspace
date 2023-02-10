package com.example.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="jjim")
public class JjimVO {									//찜목록
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="jj_id")
    private  Integer jjId;									//찜 번호

    @Column(name="m_idint")
    private  Integer memIdInt;								//회원 아이디

    @Column(name="vc_id")
    private  Integer vcId;									//화상 수업 번호

}
