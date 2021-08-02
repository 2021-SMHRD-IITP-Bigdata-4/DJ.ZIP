package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class board_DAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	
	board_DTO writeDto = null;
	
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
	
	public int write(board_DTO dto) {
		conn();
		try {
			String sql = "insert into board values(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNum());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getCategory());
			psmt.setString(5, dto.getNick_name());
			psmt.setString(6, dto.getWrite_date());
			psmt.setString(7, dto.getHits());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public board_DTO my_write(board_DTO dto) {
		conn();
		
		try {
			String sql = "select * from board where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String num = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String category = rs.getString(4);
				String nick_name = rs.getString(5);
				String write_date = rs.getString(6);
				String hits = rs.getString(7);
				
				writeDto = new board_DTO(num, title, content, category, nick_name, write_date, hits);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return writeDto;
	}
	
	public int update(board_DTO dto) {
		conn();
	try {
		String sql = "update board set title = ?, content = ?, category = ? where num = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getTitle());
		psmt.setString(2, dto.getContent());
		psmt.setString(3, dto.getCategory());
		cnt = psmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
		return cnt;
	}
}
