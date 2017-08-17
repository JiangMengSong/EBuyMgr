package org.syqb.ebuymgr.service.user;

import org.syqb.ebuymgr.pojo.EasyBuyUser;

public interface EasyBuyUserService {

    EasyBuyUser selectByLoginName(String loginName);

    int insert(EasyBuyUser user);

}
