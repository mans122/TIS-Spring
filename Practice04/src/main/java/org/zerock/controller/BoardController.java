package org.zerock.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/controller/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	//목록 화면
//	@GetMapping("/list")
//	public void list(Model model) {
		//list한테 service.getList()값을 addAttribute
//		model.addAttribute("list",service.);
//	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		model.addAttribute("list",service.getList(cri));
		//model.addAttribute("pageMaker",new PageDTO(cri,123));
		int total=service.getTotal(cri);
		log.info("total :"+total);
		model.addAttribute("pageMaker",new PageDTO(cri,total));
	}
	
	//레코드 수 
	
	
	//글쓰기 화면
	@GetMapping("/register")
	public void register() {}
	
	@PostMapping("/register")
	public String register(BoardVO board,RedirectAttributes rttr) {
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/board/list";
	}
	
	//상세보기, 수정
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("bno") Long bno, Model model) {
		model.addAttribute("board",service.get(bno));
	}
	
	//수정
	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		if(service.pwdCheck(board)==1) {
			if(service.modify(board)) {
				rttr.addFlashAttribute("result","modify");
			}
		}else {
			rttr.addFlashAttribute("result","failpwd");
		}
			log.info("pwdCheck :"+service.pwdCheck(board));
		return "redirect:/board/list";
	}
	
	//삭제
	@PostMapping("/remove")
	public String remove(BoardVO board,RedirectAttributes rttr) {
		if(service.pwdCheck(board)==1) {
			if(service.remove(board.getBno())) {
				rttr.addFlashAttribute("result","remove");
			}
		}else {
			rttr.addFlashAttribute("result","failpwd");
		}
		return "redirect:/board/list";
	}

	//Lincoln
	@GetMapping("/lincoln")
	public void lincoln() {	}
}
