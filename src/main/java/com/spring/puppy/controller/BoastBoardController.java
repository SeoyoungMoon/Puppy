package com.spring.puppy.controller;  //������//

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.puppy.boastboard.service.IBoastBoardService;
import com.spring.puppy.command.BoastBoardVO;

@Controller
@RequestMapping("/boast")
public class BoastBoardController {
	
	@Autowired
	private IBoastBoardService service;
	
	//�۾��� �������� �̵�
	@GetMapping("/boastboardWrite")
	public String boastWhite() {
		System.out.println("BoastBoardController.boardRegist()");
		return "boast/boardWrite";
	}
	
	//뽐내기 글 DB 등록 요청
	@PostMapping("/registForm")
	public String boastRegist(BoastBoardVO vo) {
		service.boastRegist(vo);
		
		return "redirect:/boast/boastboard";
	}
	
	//뽐내기 글 목록 화면
	@GetMapping("/boastboard")
	public String boastList(Model model) {
		model.addAttribute("boastList", service.getList());
		return "boast/boastboard";
	}
	
	//�� �󼼺���
	@GetMapping("/boastDetail")
	public String getContent() {
		return "boast/boastDetail";
	}
	
	//���ƿ䴩����
	@GetMapping()
	public void getCount(@RequestParam int bbno, Model model) {
		model.addAttribute(getContent());  //���ƿ� ������ �ö󰡾���. �ٵ� ���ƿ� ������ ������? �� ���� �����
	}
	
	
	
	
	
	
	
	

}
