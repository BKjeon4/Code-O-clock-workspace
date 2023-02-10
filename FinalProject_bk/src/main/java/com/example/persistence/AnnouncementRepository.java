package com.example.persistence;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.AnnouncementVO;
import com.example.domain.NewsVO;

public interface AnnouncementRepository extends CrudRepository<AnnouncementVO, Integer> {

	//페이징관련 레포지토리
	Page<AnnouncementVO> findAll(Pageable paging);

}
