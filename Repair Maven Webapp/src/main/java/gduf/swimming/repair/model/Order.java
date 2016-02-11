package gduf.swimming.repair.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.springframework.jdbc.core.RowMapper;

public class Order implements Serializable, RowMapper<Order> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int oid;
	private int fid;
	private int uid;
	private String ocontent;
	private String orespont;
	private int ostatus;
	private Timestamp odate;

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getOcontent() {
		return ocontent;
	}

	public void setOcontent(String ocontent) {
		this.ocontent = ocontent;
	}

	public String getOrespont() {
		return orespont;
	}

	public void setOrespont(String orespont) {
		this.orespont = orespont;
	}

	public int getOstatus() {
		return ostatus;
	}

	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}

	public Timestamp getOdate() {
		return odate;
	}

	public void setOdate(Timestamp odate) {
		this.odate = odate;
	}

	@Override
	public String toString() {
		return "Order [oid=" + oid + ", fid=" + fid + ", uid=" + uid
				+ ", ocontent=" + ocontent + ", orespont=" + orespont
				+ ", ostatus=" + ostatus + "]";
	}

	@Override
	public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
		Order order = new Order();
		order.setFid(rs.getInt("fid"));
		order.setOcontent(rs.getString("ocontent"));
		order.setOid(rs.getInt("oid"));
		order.setOrespont(rs.getString("orespont"));
		order.setOdate(rs.getTimestamp("odate"));
		order.setOstatus(rs.getInt("ostatus"));
		order.setUid(rs.getInt("uid"));
		return order;
	}
}
