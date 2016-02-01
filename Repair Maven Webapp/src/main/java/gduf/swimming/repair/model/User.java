package gduf.swimming.repair.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

@SuppressWarnings("serial")
public class User implements Serializable, RowMapper<User> {
	private int uid;
	// @Pattern(regexp =
	// "^1([\\d]{10})|((\\+[0-9]{2,4})?\\(?[0-9]+\\)?-?)?[0-9]{7,8}$", message =
	// "手机号码格式不正确")
	private long uphone;
	// @Size(min = 2, max = 20, message = "姓名不合法")
	private String uname;
	// @Size(min = 6, max = 16, message = "密码长度至少为6位")
	private String upwd;
	private int urank;
	private String uadress;
	// @Size(min = 9, max = 9, message = "学号必须是正确学号")
	private int stunum;

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public long getUphone() {
		return uphone;
	}

	public void setUphone(long uphone) {
		this.uphone = uphone;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public int getUrank() {
		return urank;
	}

	public void setUrank(int urank) {
		this.urank = urank;
	}

	public String getUadress() {
		return uadress;
	}

	public void setUadress(String uadress) {
		this.uadress = uadress;
	}

	public int getStunum() {
		return stunum;
	}

	public void setStunum(int stunum) {
		this.stunum = stunum;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uphone=" + uphone + ", uname=" + uname
				+ ", upwd=" + upwd + ", urank=" + urank + ", uadress="
				+ uadress + ", stunum=" + stunum + "]";
	}

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User u = new User();
		u.setStunum(rs.getInt("stunum"));
		u.setUadress(rs.getString("uadress"));
		u.setUid(rs.getInt("uid"));
		u.setUname(rs.getString("uname"));
		u.setUphone(rs.getLong("uphone"));
		u.setUpwd(rs.getString("upwd"));
		u.setUrank(rs.getInt("urank"));
		return u;
	}

}
