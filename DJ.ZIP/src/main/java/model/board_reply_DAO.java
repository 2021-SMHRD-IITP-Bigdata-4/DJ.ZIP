package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class board_reply_DAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	board_reply_DTO writeDto = null;
	ArrayList<board_reply_DTO> list = null;

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
			if (rs != null) {
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

	public ArrayList<board_reply_DTO> SelectAll(String num) {
		conn();
		String sql = "select * from board_reply where num =?";
		list = new ArrayList<board_reply_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String r_num = rs.getString(1);
				String id = rs.getString(2);
				String content = rs.getString(3);
				String write_date = rs.getString(4);
				String num1 = rs.getString(5);

				writeDto = new board_reply_DTO(r_num, id, content, write_date, num1);
				list.add(writeDto);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int write(board_reply_DTO dto) {
		conn();
		try {
			String sql = "insert into board_reply values(board_reply_seq.nextval,?,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public board_reply_DTO my_write(board_reply_DTO dto) {
		conn();
		try {
			String sql = "select * from board where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNum());
			rs = psmt.executeQuery();

			if (rs.next()) {
				String r_num = rs.getString(1);
				String id = rs.getString(2);
				String content = rs.getString(3);
				String write_date = rs.getString(4);
				String num = rs.getString(5);

				writeDto = new board_reply_DTO(r_num, id, content, write_date, num);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return writeDto;
	}

	public int update(board_reply_DTO dto) {
		conn();
		try {
			String sql = "update board_reply set id = ?, content = ? where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int delete(String num) {
		conn();
		String sql = "delete from board where num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}