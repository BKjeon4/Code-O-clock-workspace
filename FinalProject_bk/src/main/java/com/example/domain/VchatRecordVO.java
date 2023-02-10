package com.example.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="vchat_record")
public class VchatRecordVO {						//화상 수업 기록

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer vcRecId;							//화상 수업 기록 번호
    
    private Integer calId;
    
    @Column(name="t_id")
    private Integer teacherId;
    
    @Column(name="m_idint")
	private Integer memIdInt;
    
    private String origRecName;
	private String recName;
	private String recPath;

}
