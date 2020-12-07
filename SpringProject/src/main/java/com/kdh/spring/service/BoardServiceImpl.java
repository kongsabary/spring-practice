package com.kdh.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kdh.spring.domain.BoardVo;
import com.kdh.spring.persistence.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDao boardDao;
	
	@Override
	public List<BoardVo> listAll() throws Exception {
		return boardDao.listAll();
	}

	@Override
	public void write(BoardVo boardVo) throws Exception {
		boardDao.write(boardVo);
	}

	@Override
	public BoardVo selectByBno(int board_bno) throws Exception {
		return boardDao.selectByBno(board_bno);
	}

	@Override
	public void modify(BoardVo boardVo) throws Exception {
		boardDao.modify(boardVo);
	}

	@Override
	public void delete(int board_bno) throws Exception {
		boardDao.delete(board_bno);
	}

}
