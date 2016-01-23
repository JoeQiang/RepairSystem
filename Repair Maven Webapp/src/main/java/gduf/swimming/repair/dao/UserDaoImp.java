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

	public User findUserByName(int studentNum) {
		String sqlStr = "select id,uname,pwd from t_user where stunum =?";
		final User u = new User();
		jdbcTemplate.query(sqlStr, new Object[] { studentNum },
				new RowCallbackHandler() {
					public void processRow(ResultSet rs) throws SQLException {
						u.setUid(rs.getInt("uid"));
						u.setStunum(rs.getInt("stunum"));
						u.setUadress(rs.getString("uadress"));
						u.setUname(rs.getString("uname"));
						u.setUpwd(rs.getString("upwd"));
						u.setUphone(rs.getLong("uphone"));
						u.setUrank(rs.getInt("urank"));
					}

				});
		return u;
	}

	public void register(User user) {
		String sqlStr = "insert into user(uphone,uname,upwd,urank,uadress,stunum) value(?,?,?,?,?,?)";
		Object[] params = new Object[] { user.getUphone(), user.getUname(),
				user.getUpwd(), user.getUrank(), user.getUadress(),
				user.getStunum() };
		jdbcTemplate.update(sqlStr, params);
	}

}
