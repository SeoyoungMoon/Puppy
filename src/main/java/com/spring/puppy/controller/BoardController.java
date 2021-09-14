package com.spring.puppy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class BoardController {
	
	@GetMapping("/freeboard")
	public void freeboard() {
		
	}
	@GetMapping("/grooming")
	public void grooming() {
		
	}
	
}
