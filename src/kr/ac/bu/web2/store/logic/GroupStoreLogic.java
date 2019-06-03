package kr.ac.bu.web2.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.store.GroupStore;
import kr.ac.bu.web2.store.factory.ConnectionFactory;
import kr.ac.bu.web2.store.logic.util.JdbcUtils;

@Repository
public class GroupStoreLogic implements GroupStore{

	
	private ConnectionFactory connectionFactory;
	
	public GroupStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}
	
	@Override
	public boolean create(Group group) {

		Connection connection = null;
		PreparedStatement psmt = null;
		
		int createdCount = 0;
		try	{
			connection = connectionFactory.createConnection();
			System.out.println("store" + group.getGroupName());

			
			psmt = connection.prepareStatement("INSERT INTO grouptbl(groupName) values(?)");
			psmt.setString(1, group.getGroupName());
			
			createdCount = psmt.executeUpdate();
			
		} catch(SQLException e)	{
			throw new RuntimeException(e);
		} finally	{
			JdbcUtils.close(psmt, connection);
		}
		return createdCount > 0;
	}

	@Override
	public Group Search(int groupId) {
		Connection connection = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		Group group = null;
		
		group.setGroupId(groupId);
		
		try	{
			connection = connectionFactory.createConnection();
			psmt = connection.prepareStatement("select groupName from grouptbl where groupId = ?");
			
			psmt.setInt(1, groupId);
			
			rs = psmt.executeQuery();
			if(rs.next())	{
				group.setGroupName(rs.getString(1));
			}
			
		} catch(SQLException e)	{
			throw new RuntimeException(e);
		} finally	{
			JdbcUtils.close(psmt, connection, rs);
		}
		
		System.out.println("store e name " + group.getGroupName());
		
		return group;

	}

	@Override
	public List<Group> SearchAll(int groupId) {
		  
		String sql = "select groupId, groupName from grouptbl";
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		List<Group> groups =new ArrayList<Group>();
		
		try	{
			connection = connectionFactory.createConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())	{
				Group group = new Group();
				group.setGroupId(rs.getInt("groupId"));
				group.setGroupName(rs.getString("groupName"));
				
				groups.add(group);
			}
			
		} catch(SQLException e)	{
			throw new RuntimeException(e);
		} finally	{
			JdbcUtils.close(stmt, connection, rs);
		}
		
		return groups;
	}

	@Override
	public boolean update(Group group) {
		Connection connection = null;
		PreparedStatement psmt = null;
		
		int createdCount = 0;
		try	{
			connection = connectionFactory.createConnection();
			
			psmt = connection.prepareStatement("update grouptbl set groupName = ? where groupId = ?");
			psmt.setString(1, group.getGroupName());
			psmt.setInt(2, group.getGroupId());
			
			createdCount = psmt.executeUpdate();
			
		} catch(SQLException e)	{
			throw new RuntimeException(e);
		} finally	{
			JdbcUtils.close(psmt, connection);
		}
		return createdCount > 0;
	}

	@Override
	public boolean remove(int groupId) {
		Connection connection = null;
		PreparedStatement psmt = null;
		
		int createdCount = 0;
		try	{
			connection = connectionFactory.createConnection();
			
			psmt = connection.prepareStatement("delete from grouptbl where groupId = ?");
			psmt.setInt(1, groupId);
			
			createdCount = psmt.executeUpdate();
			
		} catch(SQLException e)	{
			throw new RuntimeException(e);
		} finally	{
			JdbcUtils.close(psmt, connection);
		}
		return createdCount > 0;
	}




}
