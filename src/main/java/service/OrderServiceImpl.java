package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.OrderVO;
import repository.OrderDAO;
import repository.OrderDAOImpl;

public class OrderServiceImpl implements OrderService{
	private static Logger log = LoggerFactory.getLogger(OrderServiceImpl.class);
	
	private OrderDAO odao;
	
	public OrderServiceImpl() {
		odao = new OrderDAOImpl();
	}

	@Override
	public int register(OrderVO ovo) {
		
		return odao.insert(ovo);
	}

	@Override
	public List<OrderVO> getList() {
		
		return odao.selectList();
	}

	@Override
	public OrderVO getDetail(long ono) {
		
		return odao.selectOne(ono);
	}

	@Override
	public int remove(long ono) {
		
		return odao.delete(ono);
	}
}
