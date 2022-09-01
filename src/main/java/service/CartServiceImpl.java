package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.CartVO;
import repository.CartDAO;
import repository.CartDAOIMpl;

public class CartServiceImpl implements CartService {
	private static Logger log = LoggerFactory.getLogger(CartServiceImpl.class);

	private CartDAO cdao;
	
	  public CartServiceImpl() {
		  cdao = new CartDAOIMpl();
	}

	@Override
	public int register(CartVO tvo) {
		
		return cdao.insert(tvo);
	}

	@Override
	public List<CartVO> getList() {
		
		return cdao.selectList();
	}

	@Override
	public int remove(long cno) {
		
		return cdao.delete(cno);
	}
}
