package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.ProductVO;
import orm.DataBaseBuilder;

public class ProductDAOImpl implements ProductDAO {
	private static Logger log = LoggerFactory.getLogger(ProductDAOImpl.class);
	private SqlSession sql;
	private final String NS = "ProductMapper.";
	
	public ProductDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(ProductVO pvo) {
		int isUp = sql.insert(NS+"reg", pvo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}
	@Override
	public int add(ProductVO pvo) {
		int isUp = sql.insert(NS+"ad", pvo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}
	@Override
	public List<ProductVO> selectpList() {	
		return sql.selectList(NS+"plist");
	}

	@Override
	public ProductVO selectOne(long pno) {
		return sql.selectOne(NS + "detail", pno);
	}

	@Override
	public int update(ProductVO pvo) {
		int isUp = sql.update(NS+"mod", pvo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public int delete(long pno) {
		int isUp = sql.delete(NS+"del", pno);
		if (isUp > 0 ) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public int updateFile(long pno) {
		int isUp = sql.update(NS+"delFile", pno);
		if (isUp > 0 ) {
			sql.commit();
		}
		return isUp;
	}

	@Override
	public String selectFileName(long pno) {		
		return sql.selectOne(NS+"fileName", pno);
	}

	

	@Override
	public List<ProductVO> selecttList() {
		
		return sql.selectList(NS+"tlist");
	}

	@Override
	public List<ProductVO> selectoList() {
		
		return sql.selectList(NS+"olist");
	}

	@Override
	public List<ProductVO> selectsList() {
		
		return sql.selectList(NS+"slist");
	}

	@Override
	public List<ProductVO> selectaList() {
		
		return sql.selectList(NS+"alist");
	}


}
