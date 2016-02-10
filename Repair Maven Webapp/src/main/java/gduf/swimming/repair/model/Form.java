package gduf.swimming.repair.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.RowMapper;

@SuppressWarnings("serial")
public class Form implements RowMapper<Form>, Serializable {
	private int fid;
	private String fcontent;
	private int uid;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fdate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fdealine;
	private int fstatus;
	private int ftype;
	private long fuphone;
	private String funame;
	private String fuadress;
	private String frsp;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fapointment;

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public Date getFdate() {
		return fdate;
	}

	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}

	public Date getFdealine() {
		return fdealine;
	}

	public void setFdealine(Date fdealine) {
		this.fdealine = fdealine;
	}

	public int getFstatus() {
		return fstatus;
	}

	public void setFstatus(int fstatus) {
		this.fstatus = fstatus;
	}

	public int getFtype() {
		return ftype;
	}

	public void setFtype(int ftype) {
		this.ftype = ftype;
	}

	public long getFuphone() {
		return fuphone;
	}

	public void setFuphone(long fuphone) {
		this.fuphone = fuphone;
	}

	public String getFuname() {
		return funame;
	}

	public void setFuname(String funame) {
		this.funame = funame;
	}

	public String getFuadress() {
		return fuadress;
	}

	public void setFuadress(String fuadress) {
		this.fuadress = fuadress;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Date getFapointment() {
		return fapointment;
	}

	public void setFapointment(Date fapointment) {
		this.fapointment = fapointment;
	}

	public String getFrsp() {
		return frsp;
	}

	public void setFrsp(String frsp) {
		this.frsp = frsp;
	}

	@Override
	public String toString() {
		return "Form [fid=" + fid + ", fcontent=" + fcontent + ", uid=" + uid
				+ ", fdate=" + fdate + ", fdealine=" + fdealine + ", fstatus="
				+ fstatus + ", ftype=" + ftype + ", fuphone=" + fuphone
				+ ", funame=" + funame + ", fuadress=" + fuadress + "]";
	}

	@Override
	public Form mapRow(ResultSet rs, int rowNum) throws SQLException {
		Form form = new Form();

		form.setFapointment(rs.getDate("fapointment"));

		form.setFcontent(rs.getString("fcontent"));

		form.setFdate(rs.getDate("fdate"));

		form.setFdealine(rs.getDate("fdealine"));

		form.setFid(rs.getInt("fid"));

		form.setFstatus(rs.getInt("fstatus"));

		form.setFtype(rs.getInt("ftype"));

		form.setFuadress(rs.getString("fuadress"));

		form.setFuname(rs.getString("funame"));

		form.setFuphone(rs.getLong("fuphone"));

		form.setUid(rs.getInt("uid"));

		form.setFrsp(rs.getString("frsp"));

		return form;
	}
}
