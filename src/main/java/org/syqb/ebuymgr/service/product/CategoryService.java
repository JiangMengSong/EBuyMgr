package org.syqb.ebuymgr.service.product;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategory();

    List<Category> getCategory(Pages<Category> pages);

    List<Category> getCategoryByParentId(Integer parentId);

    int getCountByLevel(Integer level);

    int delCategory(@Param("categoryId")Integer categoryId);

    int addCategory(@Param("category")Category category);

    Category getCategoryById(@Param("categoryId") Integer categoryId);

    int updateCategory(@Param("category")Category category);
}
