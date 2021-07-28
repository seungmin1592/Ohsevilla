package member;

public class MemberDTO {
	String id;
	String pw;
	String name;
	String email;
	String phone;
	String address1;
	String address2;
	String address3;
	//Boolean agreement;
	
	public MemberDTO() {}
	
	public MemberDTO(String id, String pw, String name, String email, String phone, String address1, String address2,
			String address3) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		//this.agreement = agreement;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

//	public Boolean getAgreement() {
//		return agreement;
//	}
//
//	public void setAgreement(Boolean agreement) {
//		this.agreement = agreement;
//	}
	
	
	
	
}
