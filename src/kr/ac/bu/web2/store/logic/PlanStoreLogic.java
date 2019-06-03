package kr.ac.bu.web2.store.logic;

import java.sql.SQLException;
import java.util.List;

import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.store.PlanStore;
import kr.ac.bu.web2.store.factory.ConnectionFactory;
import kr.ac.bu.web2.store.logic.util.JdbcUtils;

public class PlanStoreLogic implements PlanStore {

	private ConnectionFactory connectionFactory;
	
	public void PlanStoreLogic() {
		
		connectionFactory = ConnectionFactory.getInstance();
	}
	
//	@Override
//	public boolean create(Plan plan) {
//		
//		Connection connection = null;
//		PreparedStatement psmt =null;
//		int createdCount = 0;
//		
//		try {
//			connection = connectionFactory.createConnection();
//			
//			psmt = connection.prepareStatement("INSERT INTO PLANTBL(PLANDID,PLANNAME , PLANPURPOSE) VALUES (?,?,?)");
//			
//			psmt.setString(1, plan.getPlanId());
//			psmt.setString(2, plan.getPlanName());
//			psmt.setString(3, plan.getPlanpurpose());
//
//			createdCount = psmt.executeUpdate();
//
//		} catch (SQLException e) {
//			throw new RuntimeException(e);
//		} finally {
//			JdbcUtils.close(psmt, connection);
//		}
//
//		return createdCount > 0;
//	}

	@Override
	public Plan retrieve(String planId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Plan plan) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Plan plan) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Plan> retrieveAll(String planId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String create(Plan planId) {
		// TODO Auto-generated method stub
		return null;
	}

}
