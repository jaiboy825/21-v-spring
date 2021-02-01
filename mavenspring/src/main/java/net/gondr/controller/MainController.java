package net.gondr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.gondr.domain.SampleVO;

@Controller
public class MainController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String mainPage() {
		return "main";
	}
	
	@GetMapping("/hello")
	public String hello(Model model, @RequestParam(value = "name") String name) {
		System.out.println(name);
		model.addAttribute("msg", "안녕하세요. " + name + "님");

		return "hello";
	}

	@GetMapping("/world/{name}")
	public String world(Model model, @PathVariable String name) {
		model.addAttribute("name", name);
		return "world";
	}

	@GetMapping("/form")
	public String form(Model model) {
		return "form";
	}
	
}
