package model;

public class dj_lesson_DTO {

	private String num;
	private String lesson_title;
	private String id;
	private String lesson_info;
	private String portfolio;
	private String write_date;
	private String location_name;
	private String spot;
	private String week;
	private String hour;
	private String img_file;
	private String cancel;
	
	
	
	public dj_lesson_DTO(String lesson_title, String id, String lesson_info, String portfolio, String location_name,
			String spot, String week, String hour, String img_file, String cancel) {
		
		this.lesson_title = lesson_title;
		this.id = id;
		this.lesson_info = lesson_info;
		this.portfolio = portfolio;
		this.location_name = location_name;
		this.spot = spot;
		this.week = week;
		this.hour = hour;
		this.img_file = img_file;
		this.cancel = cancel;
	}



	public dj_lesson_DTO(String num, String lesson_title, String id, String lesson_info, String portfolio,
			String write_date, String location_name, String spot, String week, String hour, String img_file,
			String cancel) {
	
		this.num = num;
		this.lesson_title = lesson_title;
		this.id = id;
		this.lesson_info = lesson_info;
		this.portfolio = portfolio;
		this.write_date = write_date;
		this.location_name = location_name;
		this.spot = spot;
		this.week = week;
		this.hour = hour;
		this.img_file = img_file;
		this.cancel = cancel;
	}



	public dj_lesson_DTO(String num, String lesson_title, String id, String lesson_info, String portfolio,
			String write_date, String location_name, String spot) {
		this.num = num;
		this.lesson_title = lesson_title;
		this.id = id;
		this.lesson_info = lesson_info;
		this.portfolio = portfolio;
		this.write_date = write_date;
		this.location_name = location_name;
		this.spot = spot;
	}
	


	public dj_lesson_DTO(String num, String lesson_title, String lesson_info) {
		super();
		this.num = num;
		this.lesson_title = lesson_title;
		this.lesson_info = lesson_info;
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



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getLesson_info() {
		return lesson_info;
	}



	public void setLesson_info(String lesson_info) {
		this.lesson_info = lesson_info;
	}



	public String getPortfolio() {
		return portfolio;
	}



	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
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



	public String getSpot() {
		return spot;
	}



	public void setSpot(String spot) {
		this.spot = spot;
	}



	public String getWeek() {
		return week;
	}



	public void setWeek(String week) {
		this.week = week;
	}



	public String getHour() {
		return hour;
	}



	public void setHour(String hour) {
		this.hour = hour;
	}



	public String getImg_file() {
		return img_file;
	}



	public void setImg_file(String img_file) {
		this.img_file = img_file;
	}



	public String getCancel() {
		return cancel;
	}



	public void setCancel(String cancel) {
		this.cancel = cancel;
	}

}


	