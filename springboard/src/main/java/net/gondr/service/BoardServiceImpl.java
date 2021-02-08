package net.gondr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.gondr.dao.BoardDAO;
import net.gondr.domain.BoardVO;
import net.gondr.domain.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO dao;

	@Override
	public void writeArticle(BoardVO board) {
		dao.write(board);
	}

	public BoardVO viewArticle(Integer id) {
		return dao.view(id);
	}
	
	public List<BoardVO> getArticleList(Integer start, Integer cnt) {
		return dao.list(start, cnt);
	}
	
	public List<BoardVO> getCriteriaList(Criteria c) {
		return dao.list(c);
	}
	
	public void updateArticle(BoardVO board) {
		dao.update(board);
	}

	public void deleteArticle(Integer id) {
		dao.delete(id);
	}
 
	public Integer countArticle() {
		return dao.getCnt();
	}
	
	public Integer countCriteria(Criteria c) {
		return dao.getCnt(c);
	}
}
