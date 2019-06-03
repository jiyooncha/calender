package kr.ac.bu.web2.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.domain.User;
import kr.ac.bu.web2.store.UserStore;
import kr.ac.bu.web2.store.factory.ConnectionFactory;
import kr.ac.bu.web2.store.logic.util.JdbcUtils;

@Repository
public class UserStoreLogic implements UserStore {

	private ConnectionFactory connectionFactory;

	public UserStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}

	@Override
	public boolean create(User user) {

		Connection connection = null;
		PreparedStatement psmt = null;

		int createdCount = 0;
		try {
			connection = connectionFactory.createConnection();
			System.out.println("store " + user.getUserId());
			psmt = connection
					.prepareStatement("INSERT INTO usertbl(userId, userPw, userName, userPhone) VALUES (?, ?, ?, ?)");

			psmt.setString(1, user.getUserId());
			psmt.setString(2, user.getUserPw());
			psmt.setString(3, user.getUserName());
			psmt.setString(4, user.getUserPhone());

			createdCount = psmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.close(psmt, connection);
		}

		return createdCount > 0;
	}

	@Override
	public User login(User user) {

		Connection connection = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			connection = connectionFactory.createConnection();
			psmt = connection.prepareStatement(
					"SELECT userId, userPw, userName, userPhone FROM usertbl WHERE userId = ? and userPw = ?");

			psmt.setString(1, user.getUserId());
			psmt.setString(2, user.getUserPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setUserId(rs.getString(1));
				user.setUserPw(rs.getString(2));
				user.setUserName(rs.getString(3));
				user.setUserPhone(rs.getString(4));
			}

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.close(psmt, connection, rs);
		}

		System.out.println("store e name " + user.getUserName());

		return user;
	}

	@Override
	public void modify(User user) {
		System.out.println("store e namedelete " + user);

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			if (rs.next()) {
				conn = connectionFactory.createConnection();
				psmt = conn.prepareStatement("UPDATE ");
				psmt.setString(1, user.getUserId());
				psmt.setString(2, user.getUserPw());
				psmt.setString(3, user.getUserName());
				psmt.setString(4, user.getUserPhone());
				psmt.executeUpdate();
//				psmt.executeQuery();	// only select 
				JdbcUtils.close(rs, psmt, conn);
			}
		} catch (SQLException e) {
//			System.out.println("e: "+e.toString());
			throw new RuntimeException(e);

		} finally {
			JdbcUtils.close(rs, psmt, conn);
		}

		System.out.println("store e namedelete " + user);

	}

	@Override
	public void delete(String userId, String userPw) {
		String sql = "SELECT userId FROM usertbl WHERE userId = ? and userPw = ?";

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			conn = connectionFactory.createConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, userId);
			psmt.setString(2, userPw);
			rs = psmt.executeQuery();
			if (rs.next()) {
				sql = "DELETE FROM usertbl WHERE userId =?";
				conn = connectionFactory.createConnection();
				psmt = conn.prepareStatement(sql.toString());
				psmt.setString(1, userId);
				psmt.executeUpdate();
//				psmt.executeQuery();	// only select 
				JdbcUtils.close(rs, psmt, conn);
			}
		} catch (SQLException e) {
//			System.out.println("e: "+e.toString());
			throw new RuntimeException(e);

		} finally {
			JdbcUtils.close(rs, psmt, conn);
		}

		System.out.println("store e namedelete " + userPw);
	}

	@Override
	public List<Plan> findPlan(String userId) {

		Connection connection = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		List<Plan> plans = new ArrayList();

		try {
			connection = connectionFactory.createConnection();
			psmt = connection.prepareStatement("SELECT planId, planName, planPurpose, sDate, eDate");

			psmt.setString(1, userId);

			rs = psmt.executeQuery();

			while (rs.next()) {

			}

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.close(psmt, connection, rs);
		}

		return null;
	}

	@Override
	public List<Group> findGroup(String userId) {

		return null;
	}

}
