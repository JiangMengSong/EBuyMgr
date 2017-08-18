package org.syqb.ebuymgr.service.order;

import org.syqb.ebuymgr.pojo.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    List<OrderDetail> getOrderDetailByOrderId(Integer orderId);
}
