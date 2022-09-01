package repository;

import java.util.List;

import domain.OrderVO;

public interface OrderDAO {

	public int insert(OrderVO ovo);
	public List<OrderVO> selectList();
	public OrderVO selectOne(long ono);
	public int delete(long ono);
	
}
