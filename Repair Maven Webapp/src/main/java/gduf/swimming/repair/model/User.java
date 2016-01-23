package gduf.swimming.repair.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable {
	private int uid;
	private long uphone;
	private String uname;
	private String upwd;
	private int urank;
	private String uadress;
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

}
