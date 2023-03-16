package co.dxtn.pro.employ.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.dxtn.pro.employ.model.EmployDTO;
import co.dxtn.pro.employ.model.PageInfo;
import co.dxtn.pro.employ.service.EmployService;

@Controller
public class EmployController {
	
	@Autowired
	EmployService employService;
	
	@RequestMapping("employ")
	public String employPage(HttpServletRequest request, HttpServletResponse response, Model model,	EmployDTO dto) {
		System.out.println("===== employ Page =====");
		int totCnt = employService.employListCnt();;
		List<EmployDTO> list = employService.employList(request);
		int curentPg = 1;
		if(request.getParameter("curentPg")!= null)
			curentPg = Integer.parseInt(request.getParameter("curentPg"));
		model.addAttribute("curentPg", curentPg);
		
		model.addAttribute("totCnt", totCnt);
		model.addAttribute("articles", list);
		model.addAttribute("pageCnt", totCnt/PageInfo.PLINECNT + (totCnt%PageInfo.PLINECNT==0?0:1));
		return "views/employ/employPage";
	}
	
	@RequestMapping("employWritePage")
	public String employWritePage(HttpServletRequest request, HttpServletResponse response,	Model model, EmployDTO dto) {
		System.out.println("===== employ write Page =====");
		int curentPg = 1;
		if(request.getParameter("curentPg")!= null) 
			curentPg = Integer.parseInt(request.getParameter("curentPg"));
		
		model.addAttribute("curentPg", curentPg);
		model.addAttribute("dto", dto);
		return "views/employ/employWritePage";
	}
	
	@PostMapping("employWrite")
	public String employWrite(EmployDTO dto) {
		System.out.println("===== employ write =====");
		int r = employService.employWrite(dto);
		System.out.println("r : " +  r);
		if(r>0) {	
			return "redirect:employ";			
		}else {
			return "redirect:employWritePage";
		}
	}
	
	@RequestMapping("employCont")
	public String employCont(EmployDTO dto, Model model, HttpServletRequest request) {
		System.out.println("===== employ content =====");
		int curentPg = 1;
		if(request.getParameter("curentPg")!= null) 
			curentPg = Integer.parseInt(request.getParameter("curentPg"));

		EmployDTO article = employService.employCont(dto);
		model.addAttribute("curentPg", curentPg);
		model.addAttribute("article", article);
		return "views/employ/employCont";
	}
	
	@RequestMapping("employUpdatePage")
	public String employUpdatePage(EmployDTO dto, Model model, HttpServletRequest request) {
		System.out.println("===== employ update Page =====");
		int curentPg = 1;
		if(request.getParameter("curentPg")!= null) 
			curentPg = Integer.parseInt(request.getParameter("curentPg"));
		EmployDTO employDto = employService.employCont(dto);
		model.addAttribute("curentPg", curentPg);
		model.addAttribute("article", employDto);
		return "views/employ/employUpdatePage";
	}
	
	@PostMapping("employUpdate")
	public String employUpdate(EmployDTO dto, Model model, HttpServletRequest request) {
		int curentPg = 1;
		if(request.getParameter("curentPg")!= null) 
			curentPg = Integer.parseInt(request.getParameter("curentPg"));
		model.addAttribute("curentPg", curentPg);
		employService.employUpdate(dto);
		return "redirect:employ?curentPg=" + curentPg;
	}
	
	@RequestMapping("employDel")
	public String employDel(int eno, Model model, HttpServletRequest request) {
		System.out.println("===== employ del =====");
		int curentPg = 1;
		if(request.getParameter("curentPg")!= null) 
			curentPg = Integer.parseInt(request.getParameter("curentPg"));
		model.addAttribute("curentPg", curentPg);
		employService.employDel(eno);
		return "redirect:employ?curentPg=" + curentPg;
	}
}
