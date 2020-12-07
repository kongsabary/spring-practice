package com.kdh.spring.domain;

import java.sql.Timestamp;

public class BoardVo {
	private int board_bno;
	private String board_title;
	private String board_content;
	private String board_writer;
	private Timestamp board_date;
	
	public BoardVo(int board_bno, String board_title, String board_content, String board_writer, Timestamp board_date) {
		super();
		this.board_bno = board_bno;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_writer = board_writer;
		this.board_date = board_date;
	}
	
	public BoardVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getBoard_bno() {
		return board_bno;
	}
	
	public void setBoard_bno(int board_bno) {
		this.board_bno = board_bno;
	}
	
	public String getBoard_title() {
		return board_title;
	}
	
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	
	public String getBoard_content() {
		return board_content;
	}
	
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	
	public String getBoard_writer() {
		return board_writer;
	}
	
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	
	public Timestamp getBoard_date() {
		return board_date;
	}
	
	public void setBoard_date(Timestamp board_date) {
		this.board_date = board_date;
	}
	
	@Override
	public String toString() {
		return "BoardVo [board_bno=" + board_bno + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_writer=" + board_writer + ", board_date=" + board_date + "]";
	}
	
}
