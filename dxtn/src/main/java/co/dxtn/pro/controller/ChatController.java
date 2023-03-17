package co.dxtn.pro.controller;


import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChatController {
	
	@RequestMapping("/chat")
	public ModelAndView chat(@RequestParam("chatName") String chatName, HttpSession session) {
		System.out.println("===== Chat 입장 =====");
		System.out.println(chatName);
		if(chatName.equals("admin_dxtn")) {
			session.setAttribute("chatName", chatName);
			System.out.println("1111");
		}else {
			System.out.println("2222");
			Random rnd = new Random();
			String dupName = chatName + rnd.nextInt(99);
			System.out.println(dupName);
			session.setAttribute("chatName", dupName);
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("views/chat");
		return mv;
	}
	
	@PostMapping("/kick")
	@ResponseBody
	public String kick(@RequestParam("name") String name, HttpSession session) {
		System.out.println("=====================");
		System.out.println(name);
		
		System.out.println(session.getAttribute(name));
		
		
		return null;
	}
	
}