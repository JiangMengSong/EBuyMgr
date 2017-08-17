package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.Comment;

import java.util.List;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentid);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer commentid);

    int updateByPrimaryKeySelective(Comment record);

    int getCommentCount();

    List<Comment> getCommentByPage(@Param("pageIndex")Integer pageIndex, @Param("pageSize")Integer pageSize);
}