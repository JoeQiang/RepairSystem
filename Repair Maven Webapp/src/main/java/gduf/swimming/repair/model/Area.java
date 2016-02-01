package gduf.swimming.repair.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

@SuppressWarnings("serial")
public class Area implements RowMapper<Area>, Serializable {
	private int aid;
	private String area;
	private int ban;

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getBan() {
		return ban;
	}

	public void setBan(int ban) {
		this.ban = ban;
	}

	public Area mapRow(ResultSet rs, int rowNum) throws SQLException {
		Area area = new Area();
		area.setAid(rs.getInt("aid"));
		area.setArea(rs.getString("area"));
		area.setBan(rs.getInt("ban"));
		return area;
	}

	@Override
	public String toString() {
		return "Area [aid=" + aid + ", area=" + area + ", ban=" + ban + "]";
	}

}
