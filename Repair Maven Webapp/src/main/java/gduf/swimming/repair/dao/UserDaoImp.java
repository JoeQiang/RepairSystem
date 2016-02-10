package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImp implements UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public User findUserByName(int studentNum) {
		String sqlStr = "SELECT uid,uphone,uname,upwd,urank,uadress,stunum FROM t_user WHERE stunum =?";
		final User u = new User();
		Object[] params = new Object[] { studentNum };
		jdbcTemplate.query(sqlStr, params, new int[] { Types.INTEGER },
				new RowCallbackHandler() {
					public void processRow(ResultSet rs) throws SQLException {
						u.setStunum(rs.getInt("stunum"));
						u.setUadress(rs.getString("uadress"));
						u.setUid(rs.getInt("uid"));
						u.setUname(rs.getString("uname"));
						u.setUphone(rs.getLong("uphone"));
						u.setUpwd(rs.getString("upwd"));
						u.setUrank(rs.getInt("urank"));
					}

				});
		return u;
	}

	public void register(User user) {
		String sqlStr = "INSERT INTO t_user(uphone,uname,upwd,urank,uadress,stunum) VALUE(?,?,?,?,?,?)";
		Object[] params = new Object[] { user.getUphone(), user.getUname(),
				user.getUpwd(), user.getUrank(), user.getUadress(),
				user.getStunum() };
		jdbcTemplate.update(sqlStr, params);
	}

	public User findUserById(int uid) {
		String sqlStr = "SELECT * FROM t_user WHERE uid =? AND 1=1";
		return jdbcTemplate.queryForObject(sqlStr, new User(),
				new Object[] { uid });
	}

	public int update(User user) {
		String sqlStr = "UPDATE t_user SET uphone=?,uname=?,uadress=? WHERE stunum = ? ";
		return jdbcTemplate.update(sqlStr, new Object[] { user.getUphone(),
				user.getUname(), user.getUadress(), user.getStunum() },
				new int[] { Types.BIGINT, Types.VARCHAR, Types.VARCHAR,
						Types.INTEGER });
	}

	public int chagePwd(User user) {
		String sqlStr = "UPDATE t_user SET upwd=? WHERE stunum = ? ";
		return jdbcTemplate.update(sqlStr,
				new Object[] { user.getUpwd(), user.getStunum() }, new int[] {
						Types.VARCHAR, Types.INTEGER });
	}
}
