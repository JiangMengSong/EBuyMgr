package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.Order;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer orderid);

    int insert(@Param("order") Order order);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    int getOrderCount();

    List<Order> getOrderByPage(@Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer pageSize, @Param("order") Order order);
}