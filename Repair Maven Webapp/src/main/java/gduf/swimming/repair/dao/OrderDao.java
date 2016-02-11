package gduf.swimming.repair.dao;

import java.util.List;

import gduf.swimming.repair.model.Order;
import gduf.swimming.repair.model.Page;

public interface OrderDao {
	public void saveOrder(Order order);

	public Page<Order> OrderList(int pageNum, int pageSize);

	public void updateOrder(Order order);

	public List<Order> findOrderByUid(int uid);

	public Order getOrder(int oid);

	public Object updateOrsp(Order order);

	public void delOrder(int oid);

}
