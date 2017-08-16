package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.EasyBuyUser;

public interface EasyBuyUserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(EasyBuyUser record);

    int insertSelective(EasyBuyUser record);

    EasyBuyUser selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(EasyBuyUser record);

    int updateByPrimaryKey(EasyBuyUser record);

    EasyBuyUser selectByLoginName(@Param("loginName") String loginName);
}