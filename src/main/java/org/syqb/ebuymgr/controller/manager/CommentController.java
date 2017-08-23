package org.syqb.ebuymgr.controller.manager;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Comment;
import org.syqb.ebuymgr.service.user.CommentService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/mgr/comment")
public class CommentController {
    @Resource(name = "commentService")
    CommentService commentService;

    @RequestMapping(value = "/getComment.html", produces = "text/html;charset=utf-8")
    public String getComment() {
        return "redirect:/mgr/comment/getComment.html/1";
    }

    @RequestMapping(value = "/getComment.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getComment(HttpServletRequest request, Pages<Comment> pages) {
        pages.setPageSize(7);
        pages.setTotalCount(commentService.getCommentCount());
        pages.setPageList(commentService.getCommentByPage(pages));
        request.setAttribute("selUrl",4);
        request.setAttribute("pages", pages);
        return "manager/comment/commentList";
    }

    @RequestMapping(value = "/toOperaComment.html/{commentId}", produces = "text/html;charset=utf-8")
    public String toOperaComment(HttpServletRequest request, @PathVariable Integer commentId){
        request.setAttribute("comment",commentService.getCommentById(commentId));
        return "manager/comment/commentOpera";
    }

    @RequestMapping(value = "/doOperaComment.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String doOperaComment(Comment comment){
        JSONObject result = new JSONObject();
        result.put("flag",false);
        if (comment != null && comment.getCommentid() != null &&
            comment.getCommentid() > 0 && commentService.updateComment(comment) > 0)
            result.put("flag",true);
        return result.toString();
    }

    @RequestMapping(value = "/delComment.html/{commentId}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delComment(@PathVariable Integer commentId){
        JSONObject result = new JSONObject();
        result.put("flag",false);
        if (commentId != null && commentService.delComment(commentId) > 0) result.put("flag",true);
        return result.toString();
    }
}
