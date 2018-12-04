package Board.DTO;

import java.sql.Date;

public class BoardDTO {
	
	private String title;
	private String info;
	private String path;
	private String id;
	private Date date;
	
	public BoardDTO(String title, String info, String path) {
		this.title = title;
		this.info = info;
		this.path = path;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
