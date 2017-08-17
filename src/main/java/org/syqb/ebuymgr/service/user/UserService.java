package org.syqb.ebuymgr.service.user;

import org.syqb.ebuymgr.pojo.User;

public interface UserService {

    User selectByLoginName(String loginName);

    int insert(User user);

}
