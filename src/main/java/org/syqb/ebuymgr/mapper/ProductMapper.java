package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.Product;

import java.util.List;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer productid);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer productid);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    List<Product> getProduct(@Param("pageIndex")Integer pageIndex,@Param("pageSize")Integer pageSize,@Param("categoryId")Integer categoryId);

    List<Product> getProductCount(@Param("pageIndex")Integer pageIndex,@Param("pageSize")Integer pageSize,@Param("categoryId")Integer categoryId);
}