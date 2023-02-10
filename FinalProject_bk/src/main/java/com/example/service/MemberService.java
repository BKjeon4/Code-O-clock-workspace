package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.MemberVO;

public interface MemberService {
   // 회원가입
   void insertMember(MemberVO vo);

   // id 중복 체크
   public int memIdCheck(String memIdString);
   
   // 로그인
   public MemberVO loginMember(MemberVO vo);
   
   //카카오 로그인
   public String getAccessToken(String code);
   public MemberVO getUserInfo(String access_Token);
   
   // 이름과 전화번호로 아이디 찾기
   public MemberVO findByMemTelAndMemName(MemberVO vo);
   
   // 임시 비밀번호 발송
   public Integer tempPw(MemberVO vo);

   // 아이디와 이메일로 회원 정보 찾기
   public MemberVO findByMemIdStringAndMemEmail(MemberVO vo);
   
   // 회원정보 출력
   public MemberVO findByMemIdString(MemberVO vo);
   
   // 회원정보 수정
   public MemberVO updateMember(MemberVO vo);
   
   // 회원 탈퇴를 위한 사용자의 아이디(int) 비밀번호 둘 다 확인 
   public MemberVO findByMemIdIntAndMemPass(MemberVO vo);


   /*** 관리자 페이지 ***/
   //회원정보 리스트 출력
   public List<MemberVO> memberList();
   
   
   

}