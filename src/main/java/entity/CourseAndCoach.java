package entity;

public class CourseAndCoach {
	private Integer couid;
    private String couname;
    private Integer cid;
    private String couintroduce;
    private String coutime;
    private String coudaytime;   
    private String coupicpath;
    private String cname;
    private String ccourse;
    private String cintroduce;
    private String cworkyear;
    private String clevel;
    private Integer cprice;
    private String cpicpath;
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
		this.couname = couname;
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
		this.couintroduce = couintroduce;
	}
	public String getCoutime() {
		return coutime;
	}
	public void setCoutime(String coutime) {
		this.coutime = coutime;
	}
	public String getCoudaytime() {
		return coudaytime;
	}
	public void setCoudaytime(String coudaytime) {
		this.coudaytime = coudaytime;
	}
	public String getCoupicpath() {
		return coupicpath;
	}
	public void setCoupicpath(String coupicpath) {
		this.coupicpath = coupicpath;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCcourse() {
		return ccourse;
	}
	public void setCcourse(String ccourse) {
		this.ccourse = ccourse;
	}
	public String getCintroduce() {
		return cintroduce;
	}
	public void setCintroduce(String cintroduce) {
		this.cintroduce = cintroduce;
	}
	public String getCworkyear() {
		return cworkyear;
	}
	public void setCworkyear(String cworkyear) {
		this.cworkyear = cworkyear;
	}
	public String getClevel() {
		return clevel;
	}
	public void setClevel(String clevel) {
		this.clevel = clevel;
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
		this.cpicpath = cpicpath;
	}
	
	public CourseAndCoach() {
		super();
	}
	
	public CourseAndCoach(Integer couid, String couname, Integer cid, String couintroduce, String coutime,
			String coudaytime, String coupicpath, String cname, String ccourse, String cintroduce, String cworkyear,
			String clevel, Integer cprice, String cpicpath) {
		super();
		this.couid = couid;
		this.couname = couname;
		this.cid = cid;
		this.couintroduce = couintroduce;
		this.coutime = coutime;
		this.coudaytime = coudaytime;
		this.coupicpath = coupicpath;
		this.cname = cname;
		this.ccourse = ccourse;
		this.cintroduce = cintroduce;
		this.cworkyear = cworkyear;
		this.clevel = clevel;
		this.cprice = cprice;
		this.cpicpath = cpicpath;
	}
	
	@Override
	public String toString() {
		return "CourseAndCoach [couid=" + couid + ", couname=" + couname + ", cid=" + cid + ", couintroduce="
				+ couintroduce + ", coutime=" + coutime + ", coudaytime=" + coudaytime + ", coupicpath=" + coupicpath
				+ ", cname=" + cname + ", ccourse=" + ccourse + ", cintroduce=" + cintroduce + ", cworkyear="
				+ cworkyear + ", clevel=" + clevel + ", cprice=" + cprice + ", cpicpath=" + cpicpath + "]";
	}
    
}
