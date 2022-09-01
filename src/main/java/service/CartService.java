package service;

import java.util.List;

import domain.CartVO;

public interface CartService {
	public int register(CartVO tvo);
	public List<CartVO> getList();
	public int remove(long cno);
}
