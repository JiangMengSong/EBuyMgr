package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.EasyBuyOrderDetail;

public interface EasyBuyOrderDetailMapper {
    int deleteByPrimaryKey(Integer orderdetailid);

    int insert(EasyBuyOrderDetail record);

    int insertSelective(EasyBuyOrderDetail record);

    EasyBuyOrderDetail selectByPrimaryKey(Integer orderdetailid);

    int updateByPrimaryKeySelective(EasyBuyOrderDetail record);

    int updateByPrimaryKey(EasyBuyOrderDetail record);
}