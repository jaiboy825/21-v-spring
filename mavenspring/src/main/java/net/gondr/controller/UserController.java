package net.gondr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.gondr.dao.UserDAO;
import net.gondr.domain.SampleVO;
import net.gondr.domain.UserVO;
import net.gondr.domain.YYSampleVO;

@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	private UserDAO dao;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String viewRegist3Page() {
		// /user/regist
		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String regist3Process(UserVO user, HttpSession session) {
		UserVO temp = dao.selectUser(user.getUserid());

		if (user.getUserid().equals("") || user.getPassword().equals("") || user.getPasswordc().equals("")
				|| user.getUsername().equals("")) {
			session.setAttribute("msg", "공백");
			return "redirect:/user/register";
		} else if (!user.getPassword().equals(user.getPasswordc())) {
			session.setAttribute("msg", "비밀번호가 서로 다릅니다");
			return "redirect:/user/register";

		} else if (temp != null) {
			session.setAttribute("msg", "이미 가입된 아이디 입니다");
			return "redirect:/user/register";
		}
		dao.insertUser(user);
		return "redirect:/";
	}

	@RequestMapping(value = "/data/{userid}")
	public @ResponseBody UserVO data(@PathVariable String userid) {
		UserVO temp = dao.selectUser(userid);
		if (temp == null) {
			return null;
		}
		return temp;
	}

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
		UserVO u = dao.selectUser(user.getUserid());
		if (u != null && u.getPassword().equals(user.getPassword())) {
			session.removeAttribute("cant");
			// 로그인 성공한거
			session.setAttribute("user", user);
			return "redirect:/"; // 메인페이지로 이동
		} else {
			session.setAttribute("cant", "아이디 또는 비밀번호가 틀렸습니다.");
			return "redirect:/user/login";
		}
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logoutProcess(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/";
	}

	@RequestMapping(value = "info", method = RequestMethod.GET)
	public String viewInfoPage(HttpSession session) {
		return "user/info";
	}

	@RequestMapping(value = "data", method = RequestMethod.GET)
	public @ResponseBody UserVO getUserData() {
		UserVO temp = new UserVO();
		temp.setUserid("gondr");
		temp.setPassword("1234");
		temp.setUsername("최선한");
		return temp;
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
