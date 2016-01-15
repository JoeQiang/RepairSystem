package gduf.swimming.repair.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import gduf.swimming.repair.model.User;

@Repository
public class UserDaoImp implements UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public User findUserByUserName(String username) {
		String sqlStr = "select id,uname,pwd from user where uname =?";
		final User user = new User();
		jdbcTemplate.query(sqlStr, new Object[] { username },
				new UserRowMapper());
		return user;
	}

	public void register(User user) {
		String sqlStr = "insert into user(uname,pwd) value(?,?)";
		Object[] params = new Object[] { user.getUsername(), user.getPassword() };
		jdbcTemplate.update(sqlStr, params);
	}

}
