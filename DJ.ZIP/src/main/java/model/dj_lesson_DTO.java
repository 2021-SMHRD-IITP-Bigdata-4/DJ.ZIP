package model;

public class dj_lesson_DTO {

	private String num;
	private String lesson_title;
	private String nick_name;
	private String lesson_info;
	private String write_date;
	private String location_name;
	private String portfolio;
	private String spot;
	
	public dj_lesson_DTO(String num, String lesson_title, String nick_name, String lesson_info, String write_date,
			String location_name, String portfolio, String spot) {
		this.num = num;
		this.lesson_title = lesson_title;
		this.nick_name = nick_name;
		this.lesson_info = lesson_info;
		this.write_date = write_date;
		this.location_name = location_name;
		this.portfolio = portfolio;
		this.spot = spot;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getLesson_title() {
		return lesson_title;
	}

	public void setLesson_title(String lesson_title) {
		this.lesson_title = lesson_title;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getLesson_info() {
		return lesson_info;
	}

	public void setLesson_info(String lesson_info) {
		this.lesson_info = lesson_info;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getLocation_name() {
		return location_name;
	}

	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}

	public String getPortfolio() {
		return portfolio;
	}

	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}

	public String getSpot() {
		return spot;
	}

	public void setSpot(String spot) {
		this.spot = spot;
	}
	
	
	
}
