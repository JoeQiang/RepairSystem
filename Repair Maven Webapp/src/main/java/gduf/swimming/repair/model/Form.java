package gduf.swimming.repair.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

public class Form implements Serializable {
	private int fid;
	private String fcontent;
	private int uid;
	private Date fdate;
	private Date fdealine;
	private int fstatus;
	private int ftype;
	private long fuphone;
	private String funame;
	private String fuadress;

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

	@Override
	public String toString() {
		return "Form [fid=" + fid + ", fcontent=" + fcontent + ", uid=" + uid
				+ ", fdate=" + fdate + ", fdealine=" + fdealine + ", fstatus="
				+ fstatus + ", ftype=" + ftype + ", fuphone=" + fuphone
				+ ", funame=" + funame + ", fuadress=" + fuadress + "]";
	}

}
