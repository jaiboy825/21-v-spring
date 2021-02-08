package net.gondr.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nhncorp.lucy.security.xss.LucyXssFilter;
import com.nhncorp.lucy.security.xss.XssSaxFilter;

import net.gondr.domain.BoardVO;
import net.gondr.domain.Criteria;
import net.gondr.domain.UploadResponse;
import net.gondr.domain.UserVO;
import net.gondr.service.BoardService;
import net.gondr.service.UserService;
import net.gondr.util.FileUtil;
import net.gondr.util.MediaUtil;
import net.gondr.validator.BoardValidator;

@Controller
@RequestMapping("/board/")
public class BoardController {
	@Autowired
	private ServletContext context;

	@Autowired
	private BoardService service;

	@Autowired
	private UserService Uservice;

	private BoardValidator validator = new BoardValidator();

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String viewWritePage(Model model, HttpSession session, RedirectAttributes rttr) {
		if (session.getAttribute("user") == null) {
			rttr.addFlashAttribute("msg", "작성할 권한이 없습니다");
			return "redirect:/board/list";
		}

		model.addAttribute("boardVO", new BoardVO());
		return "board/write";
	}

	@RequestMapping(value = "write/{id}", method = RequestMethod.GET)
	public String viewModPage(Model model, @PathVariable("id") Integer id, HttpSession session,
			RedirectAttributes rttr) {
		BoardVO data = service.viewArticle(id);
		UserVO user = (UserVO) session.getAttribute("user");

		// 해당 글의 수정 권한여부 판단
		if (!data.getWriter().equals(user.getUserid())) {
			rttr.addFlashAttribute("msg", "수정할 권한이 없습니다");
			return "redirect:/board/list";
		} else {
			model.addAttribute("boardVO", data);
			return "board/write";
		}
	}

	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeProcess(BoardVO board, HttpSession session, Errors errors, RedirectAttributes rttr) {
		validator.validate(board, errors); // 값을 밸리데이팅
		if (errors.hasErrors()) {
			return "board/write"; // 에러가 발생시에 다시 글쓰기 페이지로 이동
		}

		UserVO user = (UserVO) session.getAttribute("user");
		// 글 수정시에는 권한 검사
		if (board.getId() != null) {
			BoardVO data = service.viewArticle(board.getId());
			if (data == null || !user.getUserid().equals(data.getWriter())) {
				rttr.addFlashAttribute("msg", "권한이 없습니다.");
				return "redirect:/board/view/" + board.getId(); // 해당 글로 다시 돌려보내기
			}
		}
		if (board.getId() == null) {
			Uservice.expUp(user.getUserid());
			Uservice.levelUp(user.getUserid());
		}

		String userid = user.getUserid();
		user = Uservice.getUserInfo(userid);

		session.setAttribute("user", user);
		board.setWriter(user.getUserid()); // 현재 로그인된 유저를 글쓴이로 등록하고

		LucyXssFilter filter = XssSaxFilter.getInstance("lucy-xss-sax.xml");
		String clean = filter.doFilter(board.getContent());
		board.setContent(clean);

		// 실제 DB에 글을 기록함.
		if (board.getId() != null) {
			// 글 수정
			service.updateArticle(board);
		} else {
			// 글 작성
			service.writeArticle(board);
		}
		return "redirect:/board/list"; // 글목록으로 이동
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteArticle(@PathVariable("id") Integer id, HttpSession session, RedirectAttributes rttr) {
		UserVO user = (UserVO) session.getAttribute("user");
		BoardVO data = service.viewArticle(id);

		if (!user.getUserid().equals(data.getWriter())) {
			rttr.addFlashAttribute("msg", "삭제할 권한이 없습니다.");
			return "redirect:/board/view/" + data.getId();
		}

		service.deleteArticle(id);
		rttr.addFlashAttribute("msg", "성공적으로 삭제되었습니다.");
		return "redirect:/board/list";
	}

	@RequestMapping(value = "view/{id}", method = RequestMethod.GET)
	public String viewArticle(@PathVariable Integer id, Model model) {
		BoardVO board = service.viewArticle(id);
		model.addAttribute("board", board);

		return "board/view";
	}

	@RequestMapping(value = "upload", method = RequestMethod.POST)
	@ResponseBody
	public UploadResponse handImageUpload(@RequestParam("file") MultipartFile file, HttpServletResponse response) {
		String uploadPath = context.getRealPath("/images");
		UploadResponse upResponse = new UploadResponse();
		try {
			String name = file.getOriginalFilename(); // 원본이름
			String ext = name.substring(name.lastIndexOf(".") + 1); // 확장자
			if (MediaUtil.getMediaType(ext) == null) {
				throw new Exception("올바르지 않은 파일 형식");
			}
			String upFile = FileUtil.uploadFile(uploadPath, name, file.getBytes());

			// 썸네일 이미지 경로 셋팅
			upResponse.setThumbImage("/images" + upFile);
			// 실제 파일 경로 셋팅
			upFile = "/images/" + upFile.substring(3, upFile.length());
			upResponse.setUploadImage(upFile);
			upResponse.setMsg("성공적으로 업로드 됨");
			upResponse.setResult(true);
		} catch (Exception e) {
			e.printStackTrace();
			upResponse.setMsg(e.getMessage());
			upResponse.setResult(false);
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		}
		return upResponse;
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String viewList(Criteria c, Model model) {
//		List<BoardVO> list = service.getArticleList((c.getPage() - 1) * c.getPerPageNum(), c.getPerPageNum());
		List<BoardVO> list = service.getCriteriaList(c);
		model.addAttribute("list", list);

		Integer cnt = service.countArticle();
		c.calculate(cnt); // 계산이 끝나면 c에는 페이지 네이션 제작에 필요한 변수들이 들어가있게 된다.
		model.addAttribute("c", c);
		return "board/list";
	}
}
