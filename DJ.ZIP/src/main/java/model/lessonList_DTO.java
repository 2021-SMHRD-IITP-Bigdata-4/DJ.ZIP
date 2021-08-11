package model;

public class lessonList_DTO {
	private String l_num;
	private String id;
	private String num;
	private String apply_date;
	private String tel;
	private String email;
	
	
	public lessonList_DTO(String l_num, String id, String num) {
		super();
		this.l_num = l_num;
		this.id = id;
		this.num = num;
	}

	

	public lessonList_DTO(String id, String num, String apply_date, String tel, String email) {
		super();
		this.id = id;
		this.num = num;
		this.apply_date = apply_date;
		this.tel = tel;
		this.email = email;
	}



	public String getL_num() {
		return l_num;
	}


	public void setL_num(String l_num) {
		this.l_num = l_num;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getApply_date() {
		return apply_date;
	}


	public void setApply_date(String apply_date) {
		this.apply_date = apply_date;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
