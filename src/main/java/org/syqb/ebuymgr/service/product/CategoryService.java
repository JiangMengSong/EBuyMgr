package org.syqb.ebuymgr.service.product;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategory();

    List<Category> getCategory(Pages<Category> pages);

    List<Category> getCategoryByParentId(Integer parentId);

    int getCategoruCount();
}
