package com.kdh.spring.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdh.spring.domain.BoardVo;
import com.kdh.spring.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		List<BoardVo> boardVo = boardService.listAll();
		model.addAttribute("boardVo", boardVo);
	}
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public void write() throws Exception {
	}
	
	@RequestMapping(value = "writePOST", method = RequestMethod.POST)
	public String writePOST(BoardVo boardVo) throws Exception {
		boardService.write(boardVo);
		return "redirect:/board/listAll";
	}
	
	@RequestMapping(value = "selectByBno", method = RequestMethod.GET)
	public void selectByBno(Model model, int board_bno) throws Exception {
		BoardVo boardVo = boardService.selectByBno(board_bno);
		model.addAttribute("boardVo", boardVo);
	}
	
	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public void modifyGet(Model model, int board_bno) throws Exception {
		BoardVo boardVo = boardService.selectByBno(board_bno);
		model.addAttribute("boardVo", boardVo);
//		return "board/litAll";
	}
	
	@RequestMapping(value = "modifyPOST", method = RequestMethod.POST)
	public String modifyPOST(BoardVo boardVo) throws Exception {
		boardService.modify(boardVo);
		System.out.println(boardVo);
		return "redirect:/board/listAll";
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(int board_bno) throws Exception {
		boardService.delete(board_bno);
		return "redirect:/board/listAll";
	}
}
