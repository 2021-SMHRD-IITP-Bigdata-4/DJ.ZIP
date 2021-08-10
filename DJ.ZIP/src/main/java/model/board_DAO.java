package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class board_DAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	board_DTO writeDto = null;
	ArrayList<board_DTO> list = null;

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

	public ArrayList<board_DTO> SelectAll() {
		conn();
		String sql = "select * from board";
		list = new ArrayList<board_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String cate = rs.getString(4);
				String id = rs.getString(5);
				String write_date = rs.getString(6);

				writeDto = new board_DTO(num, title, content, cate, id, write_date);
				list.add(writeDto);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public board_DTO selectOne(String num1) {
		conn();

		String sql = "select * from board where num =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num1);
			rs = psmt.executeQuery();

			if (rs.next()) {
				String num = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String cate = rs.getString(4);
				String id = rs.getString(5);
				String write_date = rs.getString(6);
				String hits = rs.getString(7);
				String recom = rs.getString(8);

				writeDto = new board_DTO(num, title, content, cate, id, write_date, hits, recom);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return writeDto;
	}

	public ArrayList<board_DTO> selectGroup(String category) {
		conn();
		String sql = "select * from board where category =?";
		list = new ArrayList<board_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, category);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String cate = rs.getString(4);
				String id = rs.getString(5);
				String write_date = rs.getString(6);

				writeDto = new board_DTO(num, title, content, cate, id, write_date);
				list.add(writeDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ArrayList<board_DTO> selectSearch(String search) {
		conn();

		String sql = "select * from board where id like ?";
		list = new ArrayList<board_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%"+search+"%");
			rs = psmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String cate = rs.getString(4);
				String id = rs.getString(5);
				String write_date = rs.getString(6);

				writeDto = new board_DTO(num, title, content, cate, id, write_date);
				list.add(writeDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int write(board_DTO dto) {
		conn();
		try {
			String sql = "insert into board  values(board_seq.nextval,?,?,?,?,sysdate,default,default)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getCategory());
			psmt.setString(4, dto.getId());
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

			if (rs.next()) {
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
			psmt.setString(4, dto.getNum());
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
	public int recom(board_DTO dto) {
		conn();
		try {
			String sql = "update board set recom = ? where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getRecom());
			psmt.setString(2, dto.getNum());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	public int hits(board_DTO dto) {
		conn();
		try {
			String sql = "update board set hits = ? where num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getHits());
			psmt.setString(2, dto.getNum());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<board_DTO> BoardRank() {
		conn();
		String sql = "select * from board where rownum <=5 order by hits desc ";
		list = new ArrayList<board_DTO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String num = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String cate = rs.getString(4);
				String id = rs.getString(5);
				String write_date = rs.getString(6);

				writeDto = new board_DTO(num, title, content, cate, id, write_date);
				list.add(writeDto);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
}
