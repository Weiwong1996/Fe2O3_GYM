package entity;

/**
 * 教练类
 * @author weiwong
 */
import java.io.Serializable;

public class Coach implements Serializable {
	private Integer cid;

	private String cname;

	private String ccourse;

	private String cintroduce;

	private String cworkyear;

	private String clevel;

	private Integer cprice;

	private String cpicpath;

	private static final long serialVersionUID = 1L;

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname == null ? null : cname.trim();
	}

	public String getCcourse() {
		return ccourse;
	}

	public void setCcourse(String ccourse) {
		this.ccourse = ccourse == null ? null : ccourse.trim();
	}

	public String getCintroduce() {
		return cintroduce;
	}

	public void setCintroduce(String cintroduce) {
		this.cintroduce = cintroduce == null ? null : cintroduce.trim();
	}

	public String getCworkyear() {
		return cworkyear;
	}

	public void setCworkyear(String cworkyear) {
		this.cworkyear = cworkyear == null ? null : cworkyear.trim();
	}

	public String getClevel() {
		return clevel;
	}

	public void setClevel(String clevel) {
		this.clevel = clevel == null ? null : clevel.trim();
	}

	public Integer getCprice() {
		return cprice;
	}

	public void setCprice(Integer cprice) {
		this.cprice = cprice;
	}

	public String getCpicpath() {
		return cpicpath;
	}

	public void setCpicpath(String cpicpath) {
		this.cpicpath = cpicpath == null ? null : cpicpath.trim();
	}

	public Coach(Integer cid, String cname, String ccourse, String cintroduce, String cworkyear, String clevel,
			Integer cprice, String cpicpath) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.ccourse = ccourse;
		this.cintroduce = cintroduce;
		this.cworkyear = cworkyear;
		this.clevel = clevel;
		this.cprice = cprice;
		this.cpicpath = cpicpath;
	}

	public Coach() {
		super();
	}

	public Coach(Integer cid, String cname, String ccourse, String cworkyear, String clevel, Integer cprice) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.ccourse = ccourse;
		this.cworkyear = cworkyear;
		this.clevel = clevel;
		this.cprice = cprice;
	}

	@Override
	public String toString() {
		return "Coach [cid=" + cid + ", cname=" + cname + ", ccourse=" + ccourse + ", cintroduce=" + cintroduce
				+ ", cworkyear=" + cworkyear + ", clevel=" + clevel + ", cprice=" + cprice + ", cpicpath=" + cpicpath
				+ "]";
	}

}