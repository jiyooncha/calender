package kr.ac.bu.web2.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.bu.web2.domain.Group;
import kr.ac.bu.web2.domain.Plan;
import kr.ac.bu.web2.service.GroupService;
import kr.ac.bu.web2.store.GroupStore;



@Service
public class GroupServiceLogic implements GroupService {

	@Autowired
	private GroupStore groupStore;

	@Override
	public boolean createGroup(Group group) {
		
		if(groupStore.create(group))	{
			System.out.println("service " + group.getGroupName());

			return true;
		}else	{
			return false;
		}
		
	}

	@Override
	public Group findGroup(int groupId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Group> findAllGroups() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyGroup(Group group) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeGroup(int groupId) {
		
		if(groupStore.remove(groupId)) {
			return true;
		}else	{
			return false;
		}

	}

}

