package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.EasyBuyUserAddress;

public interface EasyBuyUserAddressMapper {
    int deleteByPrimaryKey(Integer addressid);

    int insert(EasyBuyUserAddress record);

    int insertSelective(EasyBuyUserAddress record);

    EasyBuyUserAddress selectByPrimaryKey(Integer addressid);

    int updateByPrimaryKeySelective(EasyBuyUserAddress record);

    int updateByPrimaryKey(EasyBuyUserAddress record);
}