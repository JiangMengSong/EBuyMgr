package org.syqb.ebuymgr.service.news;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.News;

import java.util.List;

public interface NewsService {
    List<News> getNewsByDate();

    List<News> getNewsByPage(Pages<News> pages);

    int getNewsCount();
}
