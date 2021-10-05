package com.project.ohsevilla.dao;

import java.util.Map;

public interface MemberDao {
	
	// 회원가입
	int joinMember(Map<String, String> map);
}
