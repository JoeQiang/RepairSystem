package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.Order;
import gduf.swimming.repair.model.Page;
import gduf.swimming.repair.util.Constants;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImp implements OrderDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void saveOrder(Order order) {
		String sql = "INSERT INTO t_order(fid,uid,ocontent,ostatus,odate) VALUES(?,?,?,?,?)";
		Object[] params = new Object[] { order.getFid(), order.getUid(),
				order.getOcontent(), order.getOstatus(), order.getOdate() };
		jdbcTemplate.update(sql, params);
	}

	@Override
	public Page<Order> OrderList(int pageNum, int pageSize) {
		StringBuilder sql = new StringBuilder("SELECT * FROM t_order WHERE 1=1")
				.append(" LIMIT " + pageNum + "," + pageSize);
		StringBuilder countsql = new StringBuilder(
				"SELECT count(oid) as totalRecord FROM t_order WHERE 1=1");
		List<Order> list = jdbcTemplate.query(sql.toString(), new Order());
		int totals = jdbcTemplate.queryForObject(countsql.toString(),
				Integer.class);
		int totalPage = totals / pageSize;
		if (totals % pageSize != 0)
			totalPage++;
		if (pageNum <= 1)
			pageNum = 1;
		else if (pageNum >= totalPage)
			pageNum = totalPage;

		Page<Order> page = new Page<Order>(pageSize, pageNum, totals,
				totalPage, list);
		return page;
	}

	@Override
	public void updateOrder(Order order) {
		String sql = "update t_order set u_id =?,orespont =? , ostatus=? where oid =?";
		jdbcTemplate.update(
				sql,
				new Object[] { order.getUid(), order.getOrespont(),
						order.getOstatus(), order.getOid() });
	}

	@Override
	public List<Order> findOrderByUid(int uid) {
		String sql = "SELECT * FROM t_order WHERE 1=1 AND uid =? AND ostatus = ? ORDER BY oid DESC";
		return jdbcTemplate.query(sql, new Object[] { uid,
				Constants.FORM_TYPE_HANDLE }, new Order());
	}

	@Override
	public Order getOrder(int oid) {
		String sql = "SELECT * FROM t_order WHERE 1=1 AND oid =?";
		return jdbcTemplate.queryForObject(sql, new Order(),
				new Object[] { oid });
	}

	@Override
	public Object updateOrsp(Order order) {
		String sql = "UPDATE t_order SET orespont = ?,ostatus = ? WHERE oid = ?";
		return jdbcTemplate.update(sql, new Object[] { order.getOrespont(),
				order.getOstatus(), order.getOid() });
	}

	@Override
	public void delOrder(int oid) {
		String sql = "DELETE FROM t_order where oid = ?";
		jdbcTemplate.update(sql, new Object[] { oid });
	}
}
