package service;

import java.util.List;

import domain.CommentVO;

public interface CommentService {
	public int post(CommentVO cvo);
	public List<CommentVO> getList(long bno);
	public int modify(CommentVO cvo);
	public int remove(long cno);
	public int removeAll(long bno);
}
