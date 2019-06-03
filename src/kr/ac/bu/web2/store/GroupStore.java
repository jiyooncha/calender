
package kr.ac.bu.web2.store;

import java.util.List;

import kr.ac.bu.web2.domain.Group;

public interface GroupStore {

		boolean create(Group group);
		Group Search(int groupId);
		List<Group> SearchAll(int groupId);
		boolean update(Group group);
		boolean remove(int groupId);
		
	}
