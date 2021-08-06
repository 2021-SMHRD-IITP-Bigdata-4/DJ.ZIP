package model;

public class board_DTO {
	private String num;
	private String title;
	private String content;
	private String category;
	private String id;
	private String write_date;
	private String hits;
	
	public board_DTO(String num, String title, String content, String category, String id, String write_date,
			String hits) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.category = category;
		this.id = id;
		this.write_date = write_date;
		this.hits = hits;
	}

	public board_DTO(String title, String content, String category, String id) {
		this.title = title;
		this.content = content;
		this.category = category;
		this.id = id;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getHits() {
		return hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}
	
}
