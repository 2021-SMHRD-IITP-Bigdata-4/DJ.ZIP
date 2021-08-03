package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dj_lesson_DAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	
	dj_lesson_DTO lesson_writeDto = null;
	
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
	
	public int lesson_write(dj_lesson_DTO dto) {
		conn();
		try {
			String sql = "insert into dj_lesson values(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNum());
			psmt.setString(2, dto.getLesson_title());
			psmt.setString(3, dto.getNick_name());
			psmt.setString(4, dto.getLesson_info());
			psmt.setString(5, dto.getWrite_date());
			psmt.setString(6, dto.getLocation_name());
			psmt.setString(7, dto.getPortfolio());
			psmt.setString(8, dto.getSpot());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public dj_lesson_DTO my_lesson_write(dj_lesson_DTO dto) {
		conn();
		try {
			String sql = "select * from dj_lesson where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNum());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String num = rs.getString(1);
				String lesson_title = rs.getString(2);
				String nick_name = rs.getString(3);
				String lesson_info = rs.getString(4);
				String write_date = rs.getString(5);
				String location_name = rs.getString(6);
				String portfolio = rs.getString(7);
				String spot = rs.getString(8);
				
				lesson_writeDto = new dj_lesson_DTO(num, lesson_title, nick_name, lesson_info, write_date, location_name, portfolio, spot);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return lesson_writeDto;
	}
	
	public int update(dj_lesson_DTO dto) {
		conn();
	try {
		String sql = "update board set lesson_title = ?, lesson_info = ?, location_name = ?, portfolio = ?, spot = ? where num = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getLesson_title());
		psmt.setString(2, dto.getLesson_info());
		psmt.setString(3, dto.getLocation_name());
		psmt.setString(4, dto.getPortfolio());
		psmt.setString(5, dto.getSpot());
		cnt = psmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
		return cnt;
	}
}
