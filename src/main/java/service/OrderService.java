package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.OrderVO;

public interface OrderService {
	public int register(OrderVO ovo);
	public List<OrderVO> getList();
	public OrderVO getDetail(long ono);
	public int remove(long ono);
}
