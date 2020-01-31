package com.rose.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rose.service.CommonService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@RequestMapping("/common/*")
@Controller
@AllArgsConstructor
public class CommonController {
	
	private CommonService service;
	
	@GetMapping("/index")
	public void index(Model model) {
		log.info("index");
		model.addAttribute("topshowlist", service.getTopShowList());
		model.addAttribute("topconcertlist", service.getTopConcertList());
		model.addAttribute("topmusicallist", service.getTopMusicalList());
	}
	
	@GetMapping("/register")
	public String register() {
		return "/common/register";
	}	
	
	@GetMapping("/login")
	public String login() {
		return "/common/login";
	}	

}
