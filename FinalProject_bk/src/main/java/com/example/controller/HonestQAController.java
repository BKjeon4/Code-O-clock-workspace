package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.HonestQuestionVO;
import com.example.domain.MemberVO;
import com.example.service.HonestQAService;

@Controller
@RequestMapping("/board")
public class HonestQAController {

	@Autowired
	private HonestQAService honestQAService;
	
	// 솔직 질문 등록하기
	@RequestMapping("/insertHQ")
	public String insertHQ(HonestQuestionVO vo, HttpSession session) {
		System.out.println(vo);
		
		honestQAService.insertHQ(vo);
		return "redirect:/board/honestQuestionList";
	}
	
	// 솔직 질문 목록 띄우기
	@RequestMapping("/honestQuestionList")
	public void getHonestQuestionList(Model m) {
		m.addAttribute("honestQuestion", honestQAService.getHonestQuestionList());
	}
	
}
