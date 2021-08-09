package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class mixset_board_DAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ArrayList<mixset_board_DTO> list = null;
	mixset_board_DTO mixset_writeDto = null;
	
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_e2";
			String db_pw = "smhrd2";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if(rs != null){
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int mixset_write(mixset_board_DTO dto) {
		conn();
		try {
			String sql = "insert into mixset values(mixset_seq.nextval,?,?,?,?,null,?,?,default,default)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			psmt.setString(4, dto.getFile_name());
			psmt.setString(5, dto.getGenre_name());
			psmt.setString(6, dto.getImg_name());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public mixset_board_DTO my_mixset_write(mixset_board_DTO dto) {
		conn();
		try {
			String sql = "select * from mixset where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String title = rs.getString(1);
				String content = rs.getString(2);
				String write_date = rs.getString(3);
				String nick_name = rs.getString(4);
				String num = rs.getString(5);
				String hits = rs.getString(6);
				String file_name = rs.getString(7);
				String music_length = rs.getString(8);
				String genre_name = rs.getString(9);
				String img_name = rs.getString(10);
				
//				mixset_writeDto = new mixset_board_DTO(title, content, write_date, nick_name, hits, num, file_name, music_length, genre_name, img_name);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return mixset_writeDto;
	}
	
	public ArrayList<mixset_board_DTO> SelectAll() {
		conn();
		
		String sql = "select * from mixset";
		// list 선언만 된 상태에도 list.add하면 에러안남(주의)
		list = new ArrayList<mixset_board_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String file_name = rs.getString(5);
				String music_length = rs.getString(6);
				String genre_name = rs.getString(7);
				String img_name = rs.getString(8);
				String write_date = rs.getString(9);
				String hits = rs.getString(10);
				
				mixset_writeDto = new mixset_board_DTO(title, id, img_name);
				list.add(mixset_writeDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public int update(mixset_board_DTO dto) {
		conn();
	try {
		String sql = "update mixset set title = ?, content = ?, file_name = ?, music_length = ?, genre_name = ?, img_name = ? where num = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getTitle());
		psmt.setString(2, dto.getContent());
		psmt.setString(3, dto.getFile_name());
		psmt.setString(4, dto.getMusic_length());
		psmt.setString(5, dto.getGenre_name());
		psmt.setString(6, dto.getImg_name());
		cnt = psmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
		return cnt;
	}
	
	
	
}
