package org.syqb.ebuymgr.mapper;

import org.apache.ibatis.annotations.Param;
import org.syqb.ebuymgr.pojo.OrderDetail;

import java.util.List;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(Integer orderdetailid);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(Integer orderdetailid);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);

    List<OrderDetail> getOrderDetailByOrderId(@Param("orderId") Integer orderId);
}