package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class dj_lesson_DAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ArrayList<dj_lesson_DTO> list = null;
	
	dj_lesson_DTO lesson_writeDto = null;
	dj_lesson_DTO dto =null;
	
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
			String sql = "insert into lesson values(lesson_seq.nextval,?,?,?,?,default,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getLesson_title());
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getLesson_info());
			psmt.setString(4, dto.getPortfolio());
			psmt.setString(5, dto.getLocation_name());
			psmt.setString(6, dto.getSpot());
			psmt.setString(7, dto.getWeek());
			psmt.setString(8, dto.getHour());
			psmt.setString(9, dto.getImg_file());
			psmt.setString(10, dto.getCancel());
			
			
			
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<dj_lesson_DTO> my_lesson_write() {
		conn();
		String sql = "select * from lesson";
		list= new ArrayList<dj_lesson_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				String num = rs.getString(1);
				String lesson_title = rs.getString(2);
				String id = rs.getString(3);
				String lesson_info = rs.getString(4);
				String portfolio = rs.getString(5);
				String write_date = rs.getString(6);
				String location_name = rs.getString(7);
				String spot = rs.getString(8);
				String week = rs.getString(9);
				String hour = rs.getString(10);
				String img_file = rs.getString(11);
				String cancel = rs.getString(12);
				lesson_writeDto = new dj_lesson_DTO(num, lesson_title, id, lesson_info, portfolio, write_date, location_name, spot, week, hour, img_file, cancel);
				list.add(lesson_writeDto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
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
	
	public ArrayList<dj_lesson_DTO> LselectGroup(String Lscate) {
		conn();
		String sql = "select * from lesson where Location_Name =?";
		list = new ArrayList<dj_lesson_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, Lscate);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString(1);
				String lesson_title = rs.getString(2);
				String id = rs.getString(3);
				String lesson_info = rs.getString(4);
				String portfolio = rs.getString(5);
				String write_date = rs.getString(6);
				String location_name = rs.getString(7);
				String spot = rs.getString(8);

				lesson_writeDto = new dj_lesson_DTO(num, lesson_title, id, lesson_info, portfolio, write_date, location_name, spot);
				list.add(lesson_writeDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public dj_lesson_DTO LselectOne(String num2) {
		conn();

		String sql = "select * from lesson where num =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num2);
			rs = psmt.executeQuery();

			if (rs.next()) {
				String num = rs.getString(1);
				String lesson_title = rs.getString(2);
				String id = rs.getString(3);
				String lesson_info = rs.getString(4);
				String portfolio = rs.getString(5);
				String write_date = rs.getString(6);
				String location_name = rs.getString(7);
				String spot = rs.getString(8);
				String week = rs.getString(9);
				String hour = rs.getString(10);
				String img_file = rs.getString(11);
				String cancel = rs.getString(12);
				dto = new dj_lesson_DTO(num, lesson_title, id, lesson_info, portfolio, write_date, location_name, spot, week, hour, img_file, cancel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	public ArrayList<dj_lesson_DTO> lessonnews() {
		conn();
		String sql = "select l.num, l.lesson_title, l.id, l.lesson_info, l.portfolio, l.write_date, l.location_name, l.spot, l.week, l.hour, l.img_file, l.cancel, m.nick_name from lesson l, member m where l.id = m.id order by l.num desc";
		list = new ArrayList<dj_lesson_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString(1);
				String lesson_title = rs.getString(2);
				String id = rs.getString(3);
				String lesson_info = rs.getString(4);
				String portfolio = rs.getString(5);
				String write_date = rs.getString(6);
				String location_name = rs.getString(7);
				String spot = rs.getString(8);
				String week = rs.getString(9);
				String hour = rs.getString(10);
				String img_file = rs.getString(11);
				String cancel = rs.getString(12);
				String nick_name = rs.getString(13);

				lesson_writeDto = new dj_lesson_DTO(num, lesson_title, id, lesson_info, portfolio, write_date, location_name, spot, week, hour, img_file, cancel, nick_name);
				list.add(lesson_writeDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
}

