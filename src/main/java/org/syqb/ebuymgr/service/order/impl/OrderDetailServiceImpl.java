package org.syqb.ebuymgr.service.order.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.mapper.OrderDetailMapper;
import org.syqb.ebuymgr.pojo.OrderDetail;
import org.syqb.ebuymgr.service.order.OrderDetailService;

import javax.annotation.Resource;
import java.util.List;

@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService {
    @Resource(name = "")
    OrderDetailMapper orderDetailMapper;

    @Override
    public List<OrderDetail> getOrderDetailByOrderId(Integer orderId) {
        return orderDetailMapper.getOrderDetailByOrderId(orderId);
    }
}
