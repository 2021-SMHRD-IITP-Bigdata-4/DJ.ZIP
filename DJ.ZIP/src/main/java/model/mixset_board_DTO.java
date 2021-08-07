package model;

public class mixset_board_DTO {
	private String title;
	private String content;
	private String write_date;
	private String nick_name;
	private String id;
	private String hits;
	private String num;
	private String file_name;
	private String music_length;
	private String genre_name;
	private String img_name;
	
	
	
	public mixset_board_DTO(String title, String content, String id, String file_name, String genre_name,
			String img_name) {
		super();
		this.title = title;
		this.content = content;
		this.id = id;
		this.file_name = file_name;
		this.genre_name = genre_name;
		this.img_name = img_name;
	}

	public mixset_board_DTO(String title, String content, String write_date, String nick_name, String id, String hits,
			String num, String file_name, String music_length, String genre_name, String img_name) {
		super();
		this.title = title;
		this.content = content;
		this.write_date = write_date;
		this.nick_name = nick_name;
		this.id = id;
		this.hits = hits;
		this.num = num;
		this.file_name = file_name;
		this.music_length = music_length;
		this.genre_name = genre_name;
		this.img_name = img_name;
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
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHits() {
		return hits;
	}
	public void setHits(String hits) {
		this.hits = hits;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getMusic_length() {
		return music_length;
	}
	public void setMusic_length(String music_length) {
		this.music_length = music_length;
	}
	public String getGenre_name() {
		return genre_name;
	}
	public void setGenre_name(String genre_name) {
		this.genre_name = genre_name;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	
	
}
	