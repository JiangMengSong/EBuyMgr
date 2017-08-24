package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.Product;

import java.util.List;

public interface ProductMapper {
    int delProduct(@Param("productId") Integer productId);

    int addProduct(@Param("product") Product product);

    Product selectByPrimaryKey(Integer productid);

    int updateProduct(@Param("product") Product product);

    List<Product> getProduct(@Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSize, @Param("categoryId") Integer categoryId);

    int getProductCount(@Param("categoryId") Integer categoryId);
}