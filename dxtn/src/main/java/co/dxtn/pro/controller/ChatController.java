package co.dxtn.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChatController {
	
	@RequestMapping("/chat")
	public ModelAndView chat() {
		System.out.println("===== Chat 입장 =====");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("views/chat");
		return mv;
	}
}