package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class member_DAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	member_DTO dto = null;
	mixset_board_DTO dto1 = null;
	ArrayList<member_DTO> list = null;
	ArrayList<mixset_board_DTO> list1 = null;
	
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
			psmt.setString(3, dto.getNick_name());
			psmt.setString(4, dto.getEmail());
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
	
	public ArrayList<member_DTO> SelectAll() {
		conn();
		
		String sql = "select * from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			list = new ArrayList<member_DTO>();
			
			while(rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String nick_name = rs.getString(3);
				String email = rs.getString(4);
				String dj_career = rs.getString(5);
				String tel = rs.getString(6);
				String file_name = rs.getString(7);
				
				dto = new member_DTO(id, pw, nick_name, email, dj_career, tel, file_name);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public ArrayList<mixset_board_DTO> likeList(String id1) {
		conn();
		try {
		String sql = "select m.genre_name, m.title, m.id, m.hits from like_list l, mixset m where l.num = m.num and l.id = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, id1);
		rs = psmt.executeQuery();
		list1 = new ArrayList<mixset_board_DTO>();
		
		while(rs.next()) {
			String genre_name = rs.getString(1);
			String title = rs.getString(2);
			String id = rs.getString(3);
			String hits = rs.getString(4);
			
			dto1 = new mixset_board_DTO(title, id, hits, genre_name);
			list1.add(dto1);
		}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list1;
    }
}
