package org.syqb.ebuymgr.service.user;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Comment;

import java.util.List;

public interface CommentService {
    int getCommentCount();

    List<Comment> getCommentByPage(Pages<Comment> pages);
}
