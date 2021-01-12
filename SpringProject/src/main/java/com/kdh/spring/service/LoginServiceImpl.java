package com.kdh.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kdh.spring.domain.UserVo;
import com.kdh.spring.persistence.LoginDao;

@Service
public class LoginServiceImpl implements LoginService {

	@Inject
	private LoginDao loginDao;
	
	@Override
	public void register(UserVo userVo) throws Exception {
		loginDao.register(userVo);
	}

	@Override
	public UserVo login(UserVo userVo) throws Exception {
		return loginDao.login(userVo);
	}

}
