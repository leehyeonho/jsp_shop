package Login.DTO;

import java.sql.Date;

public class LoginDTO {
	private String uName;
	private Date uBday;
	private String uId;
	private String uPw;
	private String uAdress;
	private String uPhone;
	
	public LoginDTO() {
		
	}

	public LoginDTO(String uName, Date uBday,
			String uId,	String uPw,
			String uAdress,	String uPhone) {
		// TODO Auto-generated constructor stub
		this.uName=uName;
		this.uBday=uBday;
		this.uId=uId;
		this.uPw=uPw;
		this.uAdress=uAdress;
		this.uPhone=uPhone;
	}

	public LoginDTO(String uId, String uPw) {
		// TODO Auto-generated constructor stub
		this.uId=uId;
		this.uPw=uPw;
	}

	public String getId() {
		return uId;
	}

	public void setId(String uid) {
		this.uId = uid;
	}

	public String getPwd() {
		return uPw;
	}

	public void setPwd(String upw) {
		this.uPw = upw;
	}

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}

	public String getuAdress() {
		return uAdress;
	}

	public void setuAdress(String uAdress) {
		this.uAdress = uAdress;
	}

	public Date getuBday() {
		return uBday;
	}

	public void setuBday(Date uBday) {
		this.uBday = uBday;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}
}
