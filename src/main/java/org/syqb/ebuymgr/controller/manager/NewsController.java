package org.syqb.ebuymgr.controller.manager;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.News;
import org.syqb.ebuymgr.service.news.NewsService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/mgr/news")
public class NewsController {
    @Resource(name = "newsService")
    NewsService newsService;

    @RequestMapping(value = "/getNews.html", produces = "text/html;charset=utf-8")
    public String getNews() {
        return "redirect:/mgr/news/getNews.html/1";
    }

    @RequestMapping(value = "/getNews.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getNews(HttpServletRequest request, Pages<News> pages) {
        pages.setPageSize(6);
        pages.setTotalCount(newsService.getNewsCount());
        pages.setPageList(newsService.getNewsByPage(pages));
        request.setAttribute("selUrl",5);
        request.setAttribute("pages", pages);
        return "manager/news/newsList";
    }

    @RequestMapping(value = "/toOperaNews.html", produces = "text/html;charset=utf-8")
    public String toOperaNews(){
        return "manager/news/newsOpera";
    }

    @RequestMapping(value = "/toOperaNews.html/{newsId}", produces = "text/html;charset=utf-8")
    public String toOperaNews(HttpServletRequest request, @PathVariable Integer newsId){
        request.setAttribute("news",newsService.getNewsById(newsId));
        return "manager/news/newsOpera";
    }
    @RequestMapping(value = "/doOperaNews.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String doOperaNews(News news){
        JSONObject result = new JSONObject();
        result.put("flag",false);
        if (news != null){
            if (news.getNewsid() != null && newsService.updateNews(news) > 0) result.put("flag",true);
            if (news.getNewsid() == null && newsService.addNews(news) > 0) result.put("flag",true);
        }
        return result.toString();
    }

    @RequestMapping(value = "/delNews.html/{newsId}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delNews(@PathVariable Integer newsId){
        JSONObject result = new JSONObject();
        result.put("flag",false);
        if (newsId != null && newsService.deleteNews(newsId) > 0) result.put("flag",true);
        return result.toString();
    }

}
