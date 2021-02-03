package net.gondr.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import net.gondr.domain.RegisterDTO;
import net.gondr.util.FileUtil;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Autowired
	private ServletContext context;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String viewRegisterPage() {
		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registerProcess(RegisterDTO dto) throws Exception {
		String uploadPath = context.getRealPath("/WEB-INF/upload");
		System.out.println(uploadPath);

		MultipartFile file = dto.getProfileImg();
		String upfile = FileUtil.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		System.out.println(uploadPath + "에" + upfile + "로 업로드 되었습니다.");

		return "user/register";
	}
}
