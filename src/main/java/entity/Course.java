package entity;
/**
 * 课程类
 * @author weiwong
 */
import java.io.Serializable;

public class Course implements Serializable {
    private Integer couid;

    private String couname;

    private Integer cid;

    private String couintroduce;

    private String coutime;

    private String coudaytime;
    
    private String coupicpath;

    private static final long serialVersionUID = 1L;
    
    

    public String getCoupicpath() {
		return coupicpath;
	}

	public void setCoupicpath(String coupicpath) {
		this.coupicpath = coupicpath;
	}

	public Integer getCouid() {
        return couid;
    }

    public void setCouid(Integer couid) {
        this.couid = couid;
    }

    public String getCouname() {
        return couname;
    }

    public void setCouname(String couname) {
        this.couname = couname == null ? null : couname.trim();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCouintroduce() {
        return couintroduce;
    }

    public void setCouintroduce(String couintroduce) {
        this.couintroduce = couintroduce == null ? null : couintroduce.trim();
    }

    public String getCoutime() {
        return coutime;
    }

    public void setCoutime(String coutime) {
        this.coutime = coutime == null ? null : coutime.trim();
    }

    public String getCoudaytime() {
        return coudaytime;
    }

    public void setCoudaytime(String coudaytime) {
        this.coudaytime = coudaytime == null ? null : coudaytime.trim();
    }
    
	public Course() {
		super();
	}

	public Course(Integer couid, String couname, Integer cid, String couintroduce, String coutime, String coudaytime,
			String coupicpath) {
		super();
		this.couid = couid;
		this.couname = couname;
		this.cid = cid;
		this.couintroduce = couintroduce;
		this.coutime = coutime;
		this.coudaytime = coudaytime;
		this.coupicpath = coupicpath;
	}

	public Course(Integer couid, String couname, Integer cid, String couintroduce, String coutime, String coudaytime) {
		super();
		this.couid = couid;
		this.couname = couname;
		this.cid = cid;
		this.couintroduce = couintroduce;
		this.coutime = coutime;
		this.coudaytime = coudaytime;
	}

	@Override
	public String toString() {
		return "Course [couid=" + couid + ", couname=" + couname + ", cid=" + cid + ", couintroduce=" + couintroduce
				+ ", coutime=" + coutime + ", coudaytime=" + coudaytime + ", coupicpath=" + coupicpath + "]";
	}
    
}