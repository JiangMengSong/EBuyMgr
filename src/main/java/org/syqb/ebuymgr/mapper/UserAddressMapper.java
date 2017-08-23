package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.UserAddress;

import java.util.List;

public interface UserAddressMapper {
    int deleteByPrimaryKey(Integer addressid);

    int insert(UserAddress record);

    int insertSelective(UserAddress record);

    UserAddress selectByPrimaryKey(Integer addressid);

    int updateByPrimaryKeySelective(UserAddress record);

    int updateByPrimaryKey(UserAddress record);

    List<UserAddress> selectByUserid(@Param("userid") Integer userid);
}