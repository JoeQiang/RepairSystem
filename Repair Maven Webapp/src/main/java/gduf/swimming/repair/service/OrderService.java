package gduf.swimming.repair.service;

import gduf.swimming.repair.model.Order;
import gduf.swimming.repair.model.Page;

import java.util.List;

public interface OrderService {

	public void saveOrder(Order order);

	public List<Order> findOrderByUid(int uid);

	public Page<Order> getAllorders(int pageNum);

	public Order getOrder(int oid);

	public void updateOrsp(int oid, String orespont);

	public void delOrder(int oid);

}