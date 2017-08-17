package org.syqb.ebuymgr.controller.manager;

import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Comment;
import org.syqb.ebuymgr.service.user.CommentService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

public class CommentController {
    @Resource(name = "commentService")
    CommentService commentService;

    @RequestMapping(value = "/getComment.html",produces = "text/html;charset=utf-8")
    public String getComment(){
        return "redirect:/mgr/news/getComment.html/1";
    }

    @RequestMapping(value = "/getNews.html/{pageIndex}",produces = "text/html;charset=utf-8")
    public String getNews(HttpServletRequest request, Pages<Comment> pages){
        pages.setPageSize(6);
        pages.setTotalCount(commentService.getCommentCount());
        pages.setPageList(commentService.getCommentByPage(pages));
        request.setAttribute("pages",pages);
        return "manager/news/newsList";
    }
}
