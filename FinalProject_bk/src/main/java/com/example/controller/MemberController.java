package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.MemberVO;
import com.example.persistence.MemberRepository;
import com.example.service.MemberService;

@Controller
//@RequestMapping("/mypage")
public class MemberController {

   @Autowired
   MemberService memberService;
   
   @Autowired
   MemberRepository memberRepository;

   // 회원가입
   @RequestMapping("/insertMember")
   public String insertMember(MemberVO vo) {
      System.out.println(vo); // 회원가입 할 때 생성되는 vo
      memberService.insertMember(vo);
      return "redirect:/startpage";
   }

   // 로그인
   @RequestMapping("/loginMember")
   public String loginMember(MemberVO vo, HttpSession session, Model m) {
      System.out.println("파라미터 : " + vo); // 로그인 할 때 생성되는 vo
      MemberVO result = memberService.loginMember(vo);
      System.out.println("로그인 결과 : " + result); // 서비스 거쳐서 만들어진 vo
      System.out.println("null? : " + result == null);
      // System.out.println("empty? : "+result.isEmpty());
//      
//      if (result != null && !result.getM_delete().equals("탈퇴")) { // 로그인
//         System.out.println("로그인 성공**** : " + result);
//         session.setAttribute("memIdInt", result.getMemIdInt());
//         session.setAttribute("memIdString", result.getMemIdString());
//
//         return "redirect:academy/index-2";
//      } else if (result.getM_delete().equals("탈퇴")) {
//         System.out.println("탈퇴한 회원 -> 로그인 불가");
//         m.addAttribute("quit", "탈퇴한 회원 입니다.");
//         return "redirect:sign-in";
//      } else { // 로그인 실패
//         return "redirect:sign-in";
//      }
      
      if (result !=null) { //로그인
         System.out.println("로그인 성공**** : " + result);
         session.setAttribute("memIdInt", result.getMemIdInt());
         session.setAttribute("memIdString", result.getMemIdString());
         session.setAttribute("teacherId", result.getT_id());
         return "redirect:/startpage";
      }else{ // 로그인 실패
         return "redirect:/sign-in";
      }

   }

   // 카카오 로그인
   @RequestMapping(value = "kakaoLogin", method = RequestMethod.GET)
   public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
      System.out.println("#### code #####" + code);
      String access_Token = memberService.getAccessToken(code);

      MemberVO userInfo = memberService.getUserInfo(access_Token);
      System.out.println("###access_Token#### : " + access_Token);
      System.out.println("###nickname#### : " + userInfo.getMemNickname());
      System.out.println("###email#### : " + userInfo.getMemEmail());

      return "redirect:/startpage";
   }

   // 로그아웃
   @RequestMapping("logoutMember")
   public String logoutMember(HttpSession session) {
	   System.out.println("로그아웃");
      session.removeAttribute("memIdInt");
      session.removeAttribute("memIdString");
      session.removeAttribute("teacherId");
      return "redirect:/startpage";
   }

   // 아이디 중복 체크
   @RequestMapping(value = "mIdCheck")
   @ResponseBody // ajax 쓸 때 필요
   public String memIdCheck(String memIdString) {
      System.out.println("아이디중복체크");
      int result = memberService.memIdCheck(memIdString);
      System.out.println("중복체크------" + result);
      return String.valueOf(result);

   }

   // 아이디 찾기
   @RequestMapping(value = "findId")
   @ResponseBody // ajax 쓸 때 필요
   public String findId(MemberVO vo) {
      // System.out.println(vo.getMemName()+vo.getMemTel());
      String id = null;
      MemberVO result = memberService.findByMemTelAndMemName(vo);
      if (result != null) {
         id = result.getMemIdString();
         return id;
      } else {
         id = "0";
         return id;
      }

   }

   // 비밀번호 찾기
   @RequestMapping(value = "findPw")
   @ResponseBody // ajax 쓸 때 필요
   public String findPw(MemberVO vo) {
      String message = null;
      MemberVO result = memberService.findByMemIdStringAndMemEmail(vo);
      System.out.println(vo);
      if (result != null) {
         System.out.println("1");
         Integer mailResult = memberService.tempPw(result);
         System.out.println("2:" + mailResult); // 1이면 디비에 임시비밀번호가 저장
         message = result.getMemIdString() + "님의 이메일인" + result.getMemEmail() + "로 임시 비밀번호를 전송해 드렸습니다.";
         System.out.println("3:" + message);
         return message;
      } else {
         message = "일치하는 정보가 없습니다.";
         return message;
      }
   }

   // 회원정보 조회
   @RequestMapping(value = "/mypage/modify")
   public void myPage(MemberVO vo, HttpSession session, Model m) {
      vo.setMemIdString((String) session.getAttribute("memIdString"));
      MemberVO vo1 = memberService.findByMemIdString(vo);
      // session.setAttribute("memIdString", vo1.getMemIdString());
      m.addAttribute("member", vo1);

      System.out.println("회원정보조회" + vo1);
   }

   // 회원정보 수정
   @RequestMapping(value = "/mypage/modifyForm")
   public String modify(MemberVO vo) {
      System.out.println("컨트롤러 :" + vo);
      memberService.updateMember(vo);
      return "redirect:/mypage/modify?memIdString=" + vo.getMemIdString();
   }

   // 사용자의 아이디(int) 비밀번호 둘 다 확인 & 회원정보 삭제
   @RequestMapping(value = "/mypage/memberDelete")
   @ResponseBody // ajax 쓸 때 필요
   public String withdrawal(MemberVO vo, HttpSession session) {
      System.out.println("비밀번호 체크");
      // vo.setMemIdInt( (Integer) session.getAttribute("memIdInt"));
      MemberVO result = memberService.findByMemIdIntAndMemPass(vo);
      System.out.println("result" + result);
      System.out.println("null? : " + result == null);
      
      if (result != null) {
         //result.setM_delete("탈퇴");
         //memberRepository.save(result);
         memberRepository.deleteById(result.getMemIdInt());
         return "redirect:/academy/index";
      }else {
         return "redirect:/mypage/withdrawal";
      }
      
   }

}