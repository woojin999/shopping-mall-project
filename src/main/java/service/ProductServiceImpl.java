package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.ProductVO;
import repository.ProductDAO;
import repository.ProductDAOImpl;

public class ProductServiceImpl implements ProductService {
	private static Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);
	
	private ProductDAO pdao;
	
	public ProductServiceImpl() {
		pdao = new ProductDAOImpl();
	}

	@Override
	public int register(ProductVO pvo) {
		return pdao.insert(pvo);
	}
	@Override
	public int cart(ProductVO pvo) {
		return pdao.add(pvo);
	}
	@Override
	public List<ProductVO> getpList() {
		return pdao.selectpList();
	}
	@Override
	public List<ProductVO> gettList() {
		return pdao.selecttList();
	}
	@Override
	public List<ProductVO> getoList() {
		return pdao.selectoList();
	}
	@Override
	public List<ProductVO> getsList() {
		return pdao.selectsList();
	}
	@Override
	public List<ProductVO> getaList() {
		return pdao.selectaList();
	}

	@Override
	public ProductVO getDetail(long pno) {
		
		return pdao.selectOne(pno);
	}

	@Override
	public int modify(ProductVO pvo) {
		
		return pdao.update(pvo);
	}

	@Override
	public int remove(long pno) {
		return pdao.delete(pno);
	}

	@Override
	public int removeFile(long pno) {		
		return pdao.updateFile(pno);
	}

	@Override
	public String getFileName(long pno) {
		return pdao.selectFileName(pno);
	}



}
