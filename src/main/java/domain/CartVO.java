package domain;

public class CartVO {
	private long cno;
	private String orders;
	private String email;
	private long pno;
	private String pname;
	private double price;
	private String psize;
	private int pcount;
	private String name;
	
	public CartVO() {
	}

	public CartVO(long pno, String orders, String pname, double price, String psize, int pcount, String email) {
		this.pno = pno;
		this.orders = orders;
		this.pname = pname;
		this.price = price;
		this.psize = psize;
		this.pcount = pcount;
		this.name = email;
	}

	public long getCno() {
		return cno;
	}

	public void setCno(long cno) {
		this.cno = cno;
	}

	public String getOrders() {
		return orders;
	}

	public void setOrders(String orders) {
		this.orders = orders;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	
	
	
}
