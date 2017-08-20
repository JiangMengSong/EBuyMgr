package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.Category;

import java.util.List;
import java.util.Map;

public interface CategoryMapper {
    Map<String, Object> delCategory(@Param("map")Map<String, Object> map);

    int addCategory(@Param("category")Category category);

    Category getCategoryById(@Param("categoryId") Integer categoryId);

    int updateCategory(@Param("category")Category category);

    List<Category> getCategory(@Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSi);

    List<Category> getCategoryByParentId(@Param("parentId")Integer parentId);

    int getCountByLevel(@Param("level") Integer level);
}