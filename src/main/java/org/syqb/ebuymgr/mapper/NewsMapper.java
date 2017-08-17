package org.syqb.ebuymgr.mapper;

import com.sun.org.apache.bcel.internal.generic.NEW;
import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.News;

import java.util.List;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);

    List<News> getNewsByPage(@Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSize);

    int getNewsCount();
}