package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class lessonList_DAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	
	ArrayList<lessonList_DTO> list = null;
	lessonList_DTO dto = null;
	
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
	
	
	public ArrayList<lessonList_DTO> lesson_apply(String id1) {
		conn();
		try {
		String sql = "select m.id, m.tel, m.email, t.apply_date, l.num from lesson l, lesson_list t, member m where l.num = t.num and t.id = m.id and l.id = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, id1);
		rs = psmt.executeQuery();
		list = new ArrayList<lessonList_DTO>();
		
		while(rs.next()) {
			String id = rs.getString(1);
			String tel = rs.getString(2);
			String email = rs.getString(3);
			String date = rs.getString(4);
			String num = rs.getString(5);
			
			dto = new lessonList_DTO(id, tel, email, date, num);
			list.add(dto);
		}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
    }
}
