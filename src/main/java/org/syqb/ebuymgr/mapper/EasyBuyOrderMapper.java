package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.EasyBuyOrder;

public interface EasyBuyOrderMapper {
    int deleteByPrimaryKey(Integer orderid);

    int insert(EasyBuyOrder record);

    int insertSelective(EasyBuyOrder record);

    EasyBuyOrder selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(EasyBuyOrder record);

    int updateByPrimaryKey(EasyBuyOrder record);
}