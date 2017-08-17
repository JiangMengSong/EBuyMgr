package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.News;

import java.util.List;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);

    List<News> getNews();
}