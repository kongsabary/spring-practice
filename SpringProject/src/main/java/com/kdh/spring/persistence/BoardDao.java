package com.kdh.spring.persistence;

import java.util.List;

import com.kdh.spring.domain.BoardVo;

public interface BoardDao {
	// 전체보기
	public List<BoardVo> listAll() throws Exception;
	// 글쓰기
	public void write(BoardVo boardVo) throws Exception;
	// 해당 글 보기
	public BoardVo selectByBno(int board_bno) throws Exception;
	// 수정하기
	public void modify(BoardVo boardVo) throws Exception;
	// 삭제하기
	public void delete(int board_bno) throws Exception;
}
