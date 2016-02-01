package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.Area;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class FormDaoImp implements FormDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Area> getAllArea() {
		String sqlStr = " select * from t_adress";
		return jdbcTemplate.query(sqlStr, new Area());
	}
}
