package net.gondr.service;

import java.util.List;

import net.gondr.domain.BoardVO;
import net.gondr.domain.Criteria;

public interface BoardService {
	//글쓰기
	public void writeArticle(BoardVO board);
	//글보기
	public BoardVO viewArticle(Integer id);
	//글 리스트 보기
	public List<BoardVO> getArticleList(Integer start, Integer cnt);
	public List<BoardVO> getCriteriaList(Criteria c);
	
	//글 수정하기
	public void updateArticle(BoardVO board);
	//글 삭제하기
	public void deleteArticle(Integer id);
	//글 갯수 가져오기
	public Integer countArticle();
	public Integer countCriteria(Criteria c);
}

