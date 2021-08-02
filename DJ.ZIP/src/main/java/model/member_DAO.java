package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class member_DAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	
	member_DTO loginDto = null;
	
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
	
	public int join(member_DTO dto) {
		conn();
		try {
			String sql = "insert into member values(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getID());
			psmt.setString(2, dto.getPW());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getNick_name());
			psmt.setString(5, dto.getDj_career());
			psmt.setString(6, dto.getTel());
			psmt.setString(7, dto.getFile_name());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public member_DTO login(member_DTO dto) {
		conn();
		
		try {
			String sql = "select * from member where ID = ? and PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getID());
			psmt.setString(2, dto.getPW());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String nick_name = rs.getString(3);
				String email = rs.getString(4);
				String dj_career = rs.getString(5);
				String tel = rs.getString(6);
				String file_name = rs.getString(7);
				
				loginDto = new member_DTO(id, pw, nick_name, email, dj_career, tel, file_name);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return loginDto;
	}
	
	
	public int update(member_DTO dto) {
		conn();
	try {
		String sql = "update member set PW = ?, nick_name = ?, email = ?, dj_career = ?, tel = ?, file_name = ? where ID = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getPW());
		psmt.setString(2, dto.getNick_name());
		psmt.setString(3, dto.getEmail());
		psmt.setString(4, dto.getDj_career());
		psmt.setString(5, dto.getTel());
		psmt.setString(6, dto.getFile_name());
		cnt = psmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
		return cnt;
	}
	
}
