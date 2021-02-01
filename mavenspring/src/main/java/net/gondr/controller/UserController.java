package net.gondr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.gondr.domain.SampleVO;
import net.gondr.domain.YYSampleVO;

@Controller
@RequestMapping("/user/")
public class UserController {

	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public String viewRegistPage() {
		// /user/regist
		return "user/regist";
	}

	@RequestMapping(value = "regist", method = RequestMethod.POST)
	public String registProcess(YYSampleVO user, Model model) {
		return "redirect:/world/" + user.getUserid();
	}

	@RequestMapping(value = "regist2", method = RequestMethod.GET)
	public String viewRegist2Page() {
		// /user/regist2
		return "user/regist2";
	}

	@RequestMapping(value = "regist2", method = RequestMethod.POST)
	public String regist2Process(SampleVO user, Model model) {
		if (user.getUserid().equals("") || user.getCode().equals("") || user.getCodec().equals("")
				|| user.getName().equals("") || user.getEmail().equals("")) {
			return "redirect:/user/regist2";
		} else if (!user.getCode().equals(user.getCodec())) {
			return "redirect:/user/regist2";
		}
		model.addAttribute("user", user);
		return "form";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String viewLoginPage() {
		return "user/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginProcess(UserVO user, HttpSession session, Model model) {
		if (user.getUserid().equals("gondr") && user.getPassword().equals("1234")) {
			session.removeAttribute("cant");
			// 로그인 성공한거
			session.setAttribute("user", user);
			return "redirect:/"; // 메인페이지로 이동
		} else {
			session.setAttribute("cant", "아이디 또는 비밀번호가 틀렸습니다.");
			return "redirect:/user/login";
		}
	}
	
	@RequestMapping(value = "logout")
	public String logoutProcess(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/";
	}
	
}
// 주소는 user/regist2 이고
// 접근시  아이디, 비번, 비번확인, 이름, 이메일을 입력하는 폼이 나오고
// 전송을 누르면 
// 처리해서 공백이 있는지 확인하여 공백이 있을경우 다시 user/regist2로 보내고
// 비번과 비번확인이 다르면 다시 user/regist2로 보낸다.
// 모두 옳게 했다면 어떤페이지든 특정페이지로 넘어가서 입력한 값을 모두 출력해서 보여준다.
//  입력하신 아이디 : gondr
//  입력하신 비밀번호 : 1234
//  입력하신 이름 : 최선한
//  입력하신 이메일 : gondr@naver.com

// 1. 안진우 : 
// 2. 이준영 : 싸이버거 
// 3. 정재성 :
// 4. 정나영 : 싸이버거
// 5. 박수진 : 5000원
