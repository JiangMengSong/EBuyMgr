package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.EasyBuyNews;

public interface EasyBuyNewsMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(EasyBuyNews record);

    int insertSelective(EasyBuyNews record);

    EasyBuyNews selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(EasyBuyNews record);

    int updateByPrimaryKey(EasyBuyNews record);
}