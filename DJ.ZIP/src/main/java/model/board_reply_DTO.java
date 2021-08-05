package model;

public class board_reply_DTO {
	private String r_num;
	private String id;
	private String content;
	private String write_date;
	private String num;
	
	public board_reply_DTO(String r_num, String id, String content, String write_date, String num) {
		this.r_num = r_num;
		this.id = id;
		this.content = content;
		this.write_date = write_date;
		this.num = num;
	}

	public board_reply_DTO(String id, String content) {
		this.id = id;
		this.content = content;
	}

	public String getR_num() {
		return r_num;
	}

	public void setR_num(String r_num) {
		this.r_num = r_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

}