package com.kdh.spring.persistence;

import com.kdh.spring.domain.UserVo;

public interface LoginDao {
	// 회원가입
	public void register(UserVo userVo) throws Exception;
	
	// 로그인 확인
	public UserVo login(UserVo userVo) throws Exception;
	
}
