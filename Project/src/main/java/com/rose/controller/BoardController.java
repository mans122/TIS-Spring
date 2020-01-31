package com.rose.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rose.domain.ShowVO;
import com.rose.service.ShowService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	private ShowService service;
	
	@GetMapping("/concert")
	public String concert() {
		return "board/concert";
	}
	
	
	
	
	
	
	
	
	//연극 게시판 목록(썸네일 포함)
	@GetMapping("/show")
	public void show(Model model) {
		
		model.addAttribute("showList",service.getList());
		/*
		 * model.addAttribute("showAttachList",service.getThumbList());
		 * log.info("showList=============================");
		 * log.info(service.getThumbList());
		 */
		log.info("showList=============================");
	}
	//끝 연극게시판 목록(썸네일 포함)
	
	//연극 상세보기
	@GetMapping("/showDetail")
	public void showDetail(@RequestParam("s_no")Long s_no,Model model) {
//		log.info("showDetail=============================");
//		log.info(service.showDetail(s_no));
//		log.info("showDetail=============================");
		model.addAttribute("showDetail",service.showDetail(s_no));
	}
	//끝 연극 상세보기
	
	//연극 글쓰기 페이지로 이동
	@GetMapping("/showWrite")
	public void showWrite() {
	}
	//끝 연극 글쓰기 페이지로 이동
	
	//연극 글쓰기 등록
	@PostMapping("/showWrite")
	public String showWrite(ShowVO show) {
		log.info(show);
		/* service.showWrite(show); */
		return "redirect:/board/show";
	}
	
	
	
	
	
	
	
	
	
	@GetMapping("/musical")
	public String musical() {
		return "board/musical";
	}
}
