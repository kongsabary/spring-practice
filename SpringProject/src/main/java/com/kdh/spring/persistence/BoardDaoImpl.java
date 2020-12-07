package com.kdh.spring.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kdh.spring.domain.BoardVo;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Inject
	SqlSession sqlSession;
	
	public final static String NAMESPACE = "mappers.board-mapper.";
	
	@Override
	public List<BoardVo> listAll() throws Exception {
		return sqlSession.selectList(NAMESPACE + "listAll");
	}

	@Override
	public void write(BoardVo boardVo) throws Exception {
		sqlSession.insert(NAMESPACE + "write", boardVo);
	}

	@Override
	public BoardVo selectByBno(int board_bno) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "selectByBno", board_bno);
	}

	@Override
	public void modify(BoardVo boardVo) throws Exception {
		sqlSession.update(NAMESPACE + "modify", boardVo);
	}

	@Override
	public void delete(int board_bno) throws Exception {
		sqlSession.delete(NAMESPACE + "delete", board_bno);
	}

}
