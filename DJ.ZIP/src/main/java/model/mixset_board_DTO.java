package model;

public class mixset_board_DTO {
	private String num;
	private String title;
	private String content;
	private String id;
	private String file_name;
	private String music_length;
	private String genre_name;
	private String img_name;
	private String write_date;
	private String hits;

	public mixset_board_DTO(String num, String title, String content, String id, String file_name, String music_length,
			String genre_name, String img_name, String write_date, String hits, String nick_name) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.id = id;
		this.file_name = file_name;
		this.music_length = music_length;
		this.genre_name = genre_name;
		this.img_name = img_name;
		this.write_date = write_date;
		this.hits = hits;
	}

	public mixset_board_DTO(String num, String title, String content, String file_name, String genre_name,
			String img_name, String write_date) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.file_name = file_name;
		this.genre_name = genre_name;
		this.img_name = img_name;
		this.write_date = write_date;
	}

	public mixset_board_DTO(String num, String title, String content, String id, String file_name, String music_length,
			String genre_name, String img_name, String write_date, String hits) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.id = id;
		this.file_name = file_name;
		this.music_length = music_length;
		this.genre_name = genre_name;
		this.img_name = img_name;
		this.write_date = write_date;
		this.hits = hits;
	}

	public mixset_board_DTO(String title, String id, String img_name) {
		this.title = title;
		this.id = id;
		this.img_name = img_name;
	}

	public mixset_board_DTO(String title, String id, String num, String genre_name) {
		this.title = title;
		this.id = id;
		this.num = num;
		this.genre_name = genre_name;
	}

	public mixset_board_DTO(String title, String content, String id, String file_name, String genre_name,
			String img_name) {
		this.title = title;
		this.content = content;
		this.id = id;
		this.file_name = file_name;
		this.genre_name = genre_name;
		this.img_name = img_name;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
