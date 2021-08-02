package model;

public class member_DTO {
	private String ID;
	private String PW;
	private String nick_name;
	private String email;
	private String dj_career;
	private String tel;
	private String file_name;
	
	
	
	public member_DTO(String iD, String pW, String nick_name, String email, String dj_career, String tel,
			String file_name) {
		ID = iD;
		PW = pW;
		this.nick_name = nick_name;
		this.email = email;
		this.dj_career = dj_career;
		this.tel = tel;
		this.file_name = file_name;
	}
	
	public member_DTO(String iD, String pW) {
		ID = iD;
		PW = pW;
	}

	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String pW) {
		PW = pW;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDj_career() {
		return dj_career;
	}
	public void setDj_career(String dj_career) {
		this.dj_career = dj_career;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
	
}
