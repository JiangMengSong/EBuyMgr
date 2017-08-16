package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.EasyBuyProduct;

public interface EasyBuyProductMapper {
    int deleteByPrimaryKey(Integer productid);

    int insert(EasyBuyProduct record);

    int insertSelective(EasyBuyProduct record);

    EasyBuyProduct selectByPrimaryKey(Integer productid);

    int updateByPrimaryKeySelective(EasyBuyProduct record);

    int updateByPrimaryKey(EasyBuyProduct record);
}