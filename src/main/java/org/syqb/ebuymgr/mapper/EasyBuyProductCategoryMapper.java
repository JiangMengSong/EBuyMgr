package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.EasyBuyProductCategory;

public interface EasyBuyProductCategoryMapper {
    int deleteByPrimaryKey(Integer categoryid);

    int insert(EasyBuyProductCategory record);

    int insertSelective(EasyBuyProductCategory record);

    EasyBuyProductCategory selectByPrimaryKey(Integer categoryid);

    int updateByPrimaryKeySelective(EasyBuyProductCategory record);

    int updateByPrimaryKey(EasyBuyProductCategory record);
}