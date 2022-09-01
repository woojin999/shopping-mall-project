package domain;

public class ProductVO {
	
	private int pid;
	private long pno;
	private String pname;
	private double price;
	private String psize;
	private int pcount;
	private String regdate;
	private String image_file;
	
	public ProductVO() {
	}
	
	// 관리자 상품등록
	public ProductVO(int pid, String pname, String psize, double price) {
		this.pid = pid;
		this.pname = pname;
		this.psize = psize;
		this.price = price;
	}
	
	// add
	public ProductVO(String pname, double price, String psize, int pcount) {
		this.pname = pname;
		this.price = price;
		this.psize = psize;
		this.pcount = pcount;
	}

	// list
	public ProductVO(int pid, long pno, String pname, double price) {
		this.pid = pid;
		this.pno = pno;
		this.pname = pname;
		this.price = price;
	}
	// update
	public ProductVO(int pid, long pno, String psize, String pname, double price) {
		this.pid = pid;
		this.pno = pno;
		this.psize = psize;
		this.pname = pname;
		this.price = price;
	}
	
	//  detail
	public ProductVO(int pid, long pno, String pname, double price, String psize, int pcount, String image_file) {
		this.pid = pid;
		this.pno = pno;
		this.pname = pname;
		this.price = price;
		this.psize = psize;
		this.pcount = pcount;
		this.image_file = image_file;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public long getPno() {
		return pno;
	}
	public void setPno(long pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getImage_file() {
		return image_file;
	}
	public void setImage_file(String image_file) {
		this.image_file = image_file;
	}

	
}
