package repository;

import java.util.List;

import domain.CartVO;

public interface CartDAO {

	public int insert(CartVO tvo);
	public List<CartVO> selectList();
	public int delete(long cno);
}
