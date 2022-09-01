package domain;


public class OrderVO {

	private long ono;
	private String orders;
	private long pno;
	private String pname;
	private double price;
	private String psize;
	private int pcount;
	private String name;
	private String phone;
	private String address;
	
	public OrderVO() {
	}
	// order
	public OrderVO(long pno, String orders, String pname, double price, String psize, int pcount, String name, String phone,
			String address) {
		this.pno = pno;
		this.orders = orders;
		this.pname = pname;
		this.price = price;
		this.psize = psize;
		this.pcount = pcount;
		this.name = name;
		this.phone = phone;
		this.address = address;
	}
	// list
	public OrderVO(long ono, long pno, String pname, double price, String psize, int pcount) {
		super();
		this.ono = ono;
		this.pno = pno;
		this.pname = pname;
		this.price = price;
		this.psize = psize;
		this.pcount = pcount;
	}
	public long getOno() {
		return ono;
	}
	public void setOno(long ono) {
		this.ono = ono;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOrders() {
		return orders;
	}
	public void setOrders(String orders) {
		this.orders = orders;
	}
	
	
	
}
