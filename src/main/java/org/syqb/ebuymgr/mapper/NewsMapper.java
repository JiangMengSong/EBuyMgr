package org.syqb.ebuymgr.mapper;

import com.sun.org.apache.bcel.internal.generic.NEW;
import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.News;

import java.util.List;

public interface NewsMapper {
    int deleteNews(@Param("newsId")Integer newsId);

    int addNews(@Param("news")News news);

    News getNewsById(@Param("newsId")Integer newsId);

    int updateNews(@Param("news")News news);

    List<News> getNewsByPage(@Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSize);

    int getNewsCount();
}