package com.project.ohsevilla.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.ohsevilla.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	// 로그인 페이지로 이동
	@RequestMapping("login")
	public String loginForm() {
		
		return "member/login";
	}
	
	// 회원가입 페이지로 이동
	@GetMapping("join")
	public String joinForm() {
		return "member/register";
	}
	
	// 회원가입 완료
	@PostMapping("join")
	public String memberJoin(HttpServletRequest request) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", request.getParameter("id"));
		map.put("password", request.getParameter("password"));
		map.put("name", request.getParameter("name"));
		map.put("eamil", request.getParameter("email"));
		map.put("phone", request.getParameter("phone"));
		map.put("address1", request.getParameter("address1"));
		map.put("address2", request.getParameter("address2"));
		map.put("address3", request.getParameter("address3"));
		
		
		memberService.joinMember(map);
		
		return "redirect:/index";
	}
	
}
