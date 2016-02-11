package gduf.swimming.repair.service;

import gduf.swimming.repair.dao.OrderDao;
import gduf.swimming.repair.model.Order;
import gduf.swimming.repair.model.Page;
import gduf.swimming.repair.util.Constants;

import java.sql.Timestamp;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class OrderServiceImp implements OrderService {
	@Autowired
	private OrderDao orderDao;

	@Override
	public void saveOrder(Order order) {
		order.setOdate(new Timestamp(System.currentTimeMillis()));
		order.setOstatus(Constants.FORM_TYPE_UNHANDLE);
		orderDao.saveOrder(order);
	}

	@Override
	public List<Order> findOrderByUid(int uid) {
		return orderDao.findOrderByUid(uid);
	}

	@Override
	public Page<Order> getAllorders(int pageNum) {
		return orderDao.OrderList(pageNum, 15);
	}

	@Override
	public Order getOrder(int oid) {
		return orderDao.getOrder(oid);
	}

	@Override
	public void updateOrsp(int oid, String orespont) {
		Order order = orderDao.getOrder(oid);
		order.setOrespont(orespont);
		order.setOstatus(Constants.FORM_TYPE_HANDLE);
		orderDao.updateOrsp(order);
	}

	@Override
	public void delOrder(int oid) {
		orderDao.delOrder(oid);
	}
}
