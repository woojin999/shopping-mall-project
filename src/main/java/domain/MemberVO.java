package domain;

public class MemberVO {
	private String email;
	private String pwd;
	private String name;
	private String phone;
	private String address;
	private String nick_name;
	private String reg_at;
	private String last_login;
	private int grade;
	
	public MemberVO() {}

	// login
	public MemberVO(String email, String pwd) {
		this.email = email;
		this.pwd = pwd;
	}
	// join
	public MemberVO(String email, String pwd, String name, String phone, String address) {
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.address = address;
	}
    // modify
	public MemberVO(String email, String pwd, String name, String phone, String address, int grade) {
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.grade = grade;
	}
	// list
	public MemberVO(String email, String name, String phone, String address, String reg_at, String last_login,
			int grade) {
		this.email = email;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.reg_at = reg_at;
		this.last_login = last_login;
		this.grade = grade;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getReg_at() {
		return reg_at;
	}

	public void setReg_at(String reg_at) {
		this.reg_at = reg_at;
	}

	public String getLast_login() {
		return last_login;
	}

	public void setLast_login(String last_login) {
		this.last_login = last_login;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
}
