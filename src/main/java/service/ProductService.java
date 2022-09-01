package service;

import java.util.List;

import domain.ProductVO;

public interface ProductService {
	public int cart(ProductVO pvo);
	public int register(ProductVO pvo);
	public List<ProductVO> getpList();
	public ProductVO getDetail(long l);
	public int modify(ProductVO pvo);
	public int remove(long pno);
	public int removeFile(long pno);
	public String getFileName(long pno);
	public List<ProductVO> gettList();
	public List<ProductVO> getoList();
	public List<ProductVO> getsList();
	public List<ProductVO> getaList();

}
