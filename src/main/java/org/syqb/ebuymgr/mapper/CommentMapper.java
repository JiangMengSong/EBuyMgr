package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.Comment;

import java.util.List;

public interface CommentMapper {
    int delComment(@Param("commentId") Integer commentId);

    Comment getCommentById(@Param("commentId") Integer commentId);

    int updateComment(@Param("comment") Comment comment);

    int getCommentCount();

    List<Comment> getCommentByPage(@Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSize);
}