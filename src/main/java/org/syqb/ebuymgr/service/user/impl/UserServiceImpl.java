package org.syqb.ebuymgr.service.user.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.mapper.UserMapper;
import org.syqb.ebuymgr.pojo.User;
import org.syqb.ebuymgr.service.user.UserService;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource(name = "")
    UserMapper userMapper;

    @Override
    public User selectByLoginName(String loginName) {
        return userMapper.selectByLoginName(loginName);
    }

    @Override
    public int insert(User user) {
        return userMapper.insert(user);
    }

    @Override
    public int getUserCount() {
        return userMapper.getUserCount();
    }

    @Override
    public List<User> getUserByPage(Pages<User> pages) {
        return userMapper.getUserByPage((pages.getPageIndex() - 1) * pages.getPageSize(), pages.getPageSize());
    }

    @Override
    public User selectById(int id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public int delUser(int id) {
        return userMapper.deleteByPrimaryKey(id);
    }
}
