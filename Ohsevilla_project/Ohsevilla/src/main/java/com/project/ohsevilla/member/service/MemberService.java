package com.project.ohsevilla.member.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ohsevilla.dao.MemberDao;
import com.project.ohsevilla.member.MemberDto;

@Service
public class MemberService {

	@Autowired
	private SqlSessionTemplate template;

	private MemberDao dao;
	
	// 회원가입
	public int joinMember(Map<String, String> map) throws Exception {
		dao = template.getMapper(MemberDao.class);
		return dao.joinMember(map);
	}
}