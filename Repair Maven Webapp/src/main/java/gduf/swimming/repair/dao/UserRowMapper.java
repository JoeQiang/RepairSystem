package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserRowMapper implements RowMapper<User> {

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User u = new User();
		u.setId(rs.getInt("id"));
		u.setUsername(rs.getString("uname"));
		u.setPassword(rs.getString("pwd"));
		return u;
	}
}
