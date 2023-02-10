package com.example.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.persistence.JjimRepository;
import com.example.persistence.WishListRepository;

@Controller
public class ViewController {
   @Autowired
   private WishListRepository wishRepo;
   
   @Autowired
   private JjimRepository jjimRepo;
   
   @RequestMapping("/{step}")
   public String viewPage(@PathVariable String step) {
      return step;
   }
   
   @RequestMapping("/academy/{step}")
   public String viewAcademy(@PathVariable String step, Model m, HttpSession session) {
      Integer memIdInt = (Integer) session.getAttribute("memIdInt");
      List<Object[]> wlist = wishRepo.findByMemIdInt(memIdInt);
      List<Object[]> jlist = jjimRepo.findByMemIdIntlec(memIdInt);
      
      for(Object[] temp : wlist) {
    	  System.out.println("wlist : " + Arrays.toString(temp));
      }
      
      for(Object[] temp : jlist) {
    	  System.out.println("jlist : " + Arrays.toString(temp));
      }
      
      m.addAttribute("wishList", wlist);
      m.addAttribute("jjimList", jlist);
      return "/academy/"+step;
   }
   
   @RequestMapping("/admin/{step}")
   public String viewAdmin(@PathVariable String step) {
      return "/admin/"+step;
   }
   
   @RequestMapping("/lecture/{step}")
   public String viewLecture(@PathVariable String step, Model m, HttpSession session) {
      Integer memIdInt = (Integer) session.getAttribute("memIdInt");
      List<Object[]> wlist = wishRepo.findByMemIdInt(memIdInt);
      List<Object[]> jlist = jjimRepo.findByMemIdIntlec(memIdInt);
      
      for(Object[] temp : wlist) {
    	  System.out.println("wlist : " + Arrays.toString(temp));
      }
      
      for(Object[] temp : jlist) {
    	  System.out.println("jlist : " + Arrays.toString(temp));
      }
      
      m.addAttribute("wishList", wlist);
      m.addAttribute("jjimList", jlist);
      return "/lecture/"+step;
   }
   

   @RequestMapping("/mypage/{step}")
   public String viewMyPage(@PathVariable String step, Model m, HttpSession session) {
      Integer memIdInt = (Integer) session.getAttribute("memIdInt");
      List<Object[]> wlist = wishRepo.findByMemIdInt(memIdInt);
      List<Object[]> jlist = jjimRepo.findByMemIdIntlec(memIdInt);
      m.addAttribute("wishList", wlist);
      m.addAttribute("jjimList", jlist);
      return "/mypage/"+step;
   }
   
   @RequestMapping("/board/{step}")
   public String viewBoard(@PathVariable String step, Model m, HttpSession session) {
      Integer memIdInt = (Integer) session.getAttribute("memIdInt");
      List<Object[]> wlist = wishRepo.findByMemIdInt(memIdInt);
      List<Object[]> jlist = jjimRepo.findByMemIdIntlec(memIdInt);
      m.addAttribute("wishList", wlist);
      m.addAttribute("jjimList", jlist);
      return "/board/"+step;
   }

	@RequestMapping("/outside/{step}")
	public void viewOutside(HttpServletResponse httpServletResponse, @PathVariable String step) throws IOException {
		httpServletResponse.sendRedirect("http://"+step);
	}
	
	@RequestMapping("/hello")
	public void test(String test) {
		System.out.println(test);
	}
	
	
}
