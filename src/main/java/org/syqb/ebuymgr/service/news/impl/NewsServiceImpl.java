package org.syqb.ebuymgr.service.news.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.mapper.NewsMapper;
import org.syqb.ebuymgr.pojo.News;
import org.syqb.ebuymgr.service.news.NewsService;

import javax.annotation.Resource;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
    @Resource(name = "")
    NewsMapper newsMapper;

    @Override
    public List<News> getNewsByDate() {
        return newsMapper.getNewsByPage(0, 10);
    }

    @Override
    public List<News> getNewsByPage(Pages<News> pages) {
        if (null == pages) return null;
        return newsMapper.getNewsByPage((pages.getPageIndex() - 1) * pages.getPageSize(), pages.getPageSize());
    }

    @Override
    public int getNewsCount() {
        return newsMapper.getNewsCount();
    }

    @Override
    public int deleteNews(Integer newsId) {
        if (newsId == null || newsId < 1) return 0;
        return newsMapper.deleteNews(newsId);
    }

    @Override
    public int addNews(News news) {
        if (news == null) return 0;
        return newsMapper.addNews(news);
    }

    @Override
    public News getNewsById(Integer newsId) {
        if (newsId == null || newsId < 1) return null;
        return newsMapper.getNewsById(newsId);
    }

    @Override
    public int updateNews(News news) {
        if (news == null) return 0;
        return newsMapper.updateNews(news);
    }
}
