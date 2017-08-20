package org.syqb.ebuymgr.mapper;

import org.syqb.ebuymgr.pojo.RecentBrowse;

public interface RecentBrowseMapper {
    int deleteByPrimaryKey(Integer recentbrowseid);

    int insert(RecentBrowse record);

    int insertSelective(RecentBrowse record);

    RecentBrowse selectByPrimaryKey(Integer recentbrowseid);

    int updateByPrimaryKeySelective(RecentBrowse record);

    int updateByPrimaryKey(RecentBrowse record);
}