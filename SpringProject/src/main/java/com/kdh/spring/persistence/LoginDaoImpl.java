package com.kdh.spring.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kdh.spring.domain.UserVo;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Inject
	SqlSession sqlSession;
	
	public final static String NAMESPACE = "mappers.user-mapper.";
	
	@Override
	public void register(UserVo userVo) throws Exception {
	}

	@Override
	public UserVo login(UserVo userVo) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "login", userVo);
	}

}
