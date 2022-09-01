package repository;

import java.util.List;

import domain.ProductVO;

public interface ProductDAO {
	public int insert(ProductVO pvo);
	public List<ProductVO> selectpList();
	public List<ProductVO> selecttList();
	public List<ProductVO> selectoList();
	public List<ProductVO> selectsList();
	public List<ProductVO> selectaList();
	public ProductVO selectOne(long pno);
	public int update(ProductVO pvo);
	public int delete(long pno);
	public int updateFile(long pno);
	public String selectFileName(long pno);
	public int add(ProductVO pvo);

}
