package net.gondr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	 @RequestMapping(value="/", method=RequestMethod.GET)
	 public String mainPage() {
		 return "main";
	 }
	 // 익셉션 페이지를 커스터마이징을 하는데 
	 // 그냥 그림하나 띄우고 메인페이지로 돌아가기 버튼 정도 만들고 
	 // 에러 보여주고
	 
	 // /test?age=gondr
	 @RequestMapping(value="/test", method=RequestMethod.GET)
	 public String sample(@RequestParam(value="age", required=false, defaultValue="10") int age) {
		 return "main";
	 }
}
