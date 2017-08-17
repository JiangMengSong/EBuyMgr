package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.UserAddress;

public interface UserAddressMapper {
    int deleteByPrimaryKey(Integer addressid);

    int insert(UserAddress record);

    int insertSelective(UserAddress record);

    UserAddress selectByPrimaryKey(Integer addressid);

    int updateByPrimaryKeySelective(UserAddress record);

    int updateByPrimaryKey(UserAddress record);
}