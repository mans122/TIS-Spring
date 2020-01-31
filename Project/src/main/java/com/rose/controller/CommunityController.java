package com.rose.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rose.domain.CmBoardVO;
import com.rose.domain.CmCriteria;
import com.rose.service.CmBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/community/*")
@AllArgsConstructor
public class CommunityController {
	
	@GetMapping("/main")
	public String main() {
		return "community/main";
	}
	
	/* -- 자유게시판 ------------------------------ */
	private CmBoardService service;
	
	@GetMapping("/boardList")
	public void boardList(CmCriteria cri, Model model) {
		log.info("community boardList: " + cri);
		model.addAttribute("boardList", service.getList(cri));
	}
	
	@GetMapping("/boardRegister")
	public void boardRegister() {}
	
	@PostMapping("/boardRegister")
	public String boardRegister(CmBoardVO cmboard, RedirectAttributes rttr) {
		log.info("community boardRegister: " + cmboard);
		service.register(cmboard);
		rttr.addFlashAttribute("result", cmboard.getB_no());
		return "redirect:/community/boardList";
	}
	
	@GetMapping({"/boardGet", "/boardModify"})
	public void boardGet(@RequestParam("b_no") Long b_no, Model model) {
		log.info("community boardGet or boardModify");
		model.addAttribute("cmboard", service.get(b_no));
	}
	
	@PostMapping("/boardModify")
	public String boardModify(CmBoardVO cmboard, RedirectAttributes rttr) {
		log.info("community boardModify: " + cmboard);
		if (service.modify(cmboard)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/community/boardList";
	}
	
	@PostMapping("/boardRemove")
	public String boardRemove(@RequestParam("b_no") Long b_no, RedirectAttributes rttr) {
		log.info("community remove: " + b_no);
		if (service.remove(b_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/community/boardList";
	}
	
	
	
	/* -- 공지사항 ------------------------------ */

	/* -- Q&A ------------------------------ */
	@GetMapping("/qna")
	public String qna() {
		return "/qna";
	}

}
