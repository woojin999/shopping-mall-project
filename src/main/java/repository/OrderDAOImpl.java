package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.OrderVO;
import orm.DataBaseBuilder;

public class OrderDAOImpl implements OrderDAO {
	private static Logger log = LoggerFactory.getLogger(OrderDAOImpl.class);
	private SqlSession sql;
	private final String NS = "OrderMapper.";
	
	public OrderDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(OrderVO ovo) {
		int isUp = sql.insert(NS+"reg", ovo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public List<OrderVO> selectList() {
		return sql.selectList(NS+"list");
	}

	@Override
	public OrderVO selectOne(long ono) {
		return sql.selectOne(NS + "detail", ono);
	}

	@Override
	public int delete(long ono) {
		
		int isUp = sql.delete(NS+"del", ono);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

}
