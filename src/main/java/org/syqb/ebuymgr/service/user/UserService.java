package org.syqb.ebuymgr.service.user;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.User;

import java.util.List;

public interface UserService {

    User selectByLoginName(String loginName);

    int insert(User user);

    int getUserCount();

    List<User> getUserByPage(Pages<User> pages);

    User selectById(int id);

    int updateUser(User user);

    int delUser(int id);

}
