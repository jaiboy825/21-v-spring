package net.gondr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.gondr.domain.UserVO;

@Controller
@RequestMapping("/user/")
public class UserController {

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String viewRegisterPage() {
		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registerProcess(UserVO user) {
		//아직 미구현
		return "user/register";
	}
}
