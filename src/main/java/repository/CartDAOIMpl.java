package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.CartVO;
import orm.DataBaseBuilder;

public class CartDAOIMpl implements CartDAO {
	private static Logger log = LoggerFactory.getLogger(CartDAOIMpl.class);
	private SqlSession sql;
	private final String NS = "CartMapper.";
	
	public CartDAOIMpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(CartVO tvo) {
		int isUp = sql.insert(NS+"reg", tvo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public List<CartVO> selectList() {
		
		return sql.selectList(NS+"list");
	}

	@Override
	public int delete(long cno) {
		int isUp = sql.delete(NS+"del", cno);
		if (isUp > 0) {
			sql.commit();
		}
		return isUp;
	}
}
