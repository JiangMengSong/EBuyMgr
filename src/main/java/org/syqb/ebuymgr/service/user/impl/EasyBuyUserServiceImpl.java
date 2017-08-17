package org.syqb.ebuymgr.service.user.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.mapper.EasyBuyUserMapper;
import org.syqb.ebuymgr.pojo.EasyBuyUser;
import org.syqb.ebuymgr.service.user.EasyBuyUserService;

import javax.annotation.Resource;

@Service("easyBuyUserService")
public class EasyBuyUserServiceImpl implements EasyBuyUserService {
    @Resource(name="")
    EasyBuyUserMapper easyBuyUserMapper;

    @Override
    public EasyBuyUser selectByLoginName(String loginName) {
        return easyBuyUserMapper.selectByLoginName(loginName);
    }

    @Override
    public int insert(EasyBuyUser user) {
        return easyBuyUserMapper.insert(user);
    }
}
