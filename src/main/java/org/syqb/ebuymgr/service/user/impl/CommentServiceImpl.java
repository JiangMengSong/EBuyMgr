package org.syqb.ebuymgr.service.user.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.mapper.CommentMapper;
import org.syqb.ebuymgr.pojo.Comment;
import org.syqb.ebuymgr.service.user.CommentService;

import javax.annotation.Resource;
import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Resource(name = "")
    CommentMapper commentMapper;

    @Override
    public int getCommentCount() {
        return commentMapper.getCommentCount();
    }

    @Override
    public List<Comment> getCommentByPage(Pages<Comment> pages) {
        return commentMapper.getCommentByPage((pages.getPageIndex() - 1) * pages.getPageSize(), pages.getPageSize());
    }
}
