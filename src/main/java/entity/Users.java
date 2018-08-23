package entity;

/**
 * 用户类
 * @author weiwong
 */
import java.io.Serializable;

public class Users implements Serializable {
	private Integer uid;

	private String uname;

	private String upwd;

	private Integer uage;

	public Users(String uname, String upwd, Integer uage, Integer uheight, Integer uweight, String utimelit) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.uage = uage;
		this.uheight = uheight;
		this.uweight = uweight;
		this.utimelit = utimelit;
	}

	private Integer uheight;

	private Integer uweight;

	private String utimelit;

	private Integer isplaned;

	private String upicpath;

	private static final long serialVersionUID = 1L;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public Users(String uname, String upwd, Integer uage, String utimelit) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.uage = uage;
		this.utimelit = utimelit;
	}

	public void setUname(String uname) {
		this.uname = uname == null ? null : uname.trim();
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd == null ? null : upwd.trim();
	}

	public Integer getUage() {
		return uage;
	}

	public void setUage(Integer uage) {
		this.uage = uage;
	}

	public Integer getUheight() {
		return uheight;
	}

	public void setUheight(Integer uheight) {
		this.uheight = uheight;
	}

	public Integer getUweight() {
		return uweight;
	}

	public void setUweight(Integer uweight) {
		this.uweight = uweight;
	}

	public String getUtimelit() {
		return utimelit;
	}

	public void setUtimelit(String utimelit) {
		this.utimelit = utimelit == null ? null : utimelit.trim();
	}

	public Integer getIsplaned() {
		return isplaned;
	}

	public void setIsplaned(Integer isplaned) {
		this.isplaned = isplaned;
	}

	public String getUpicpath() {
		return upicpath;
	}

	public void setUpicpath(String upicpath) {
		this.upicpath = upicpath == null ? null : upicpath.trim();
	}

	public Users() {
		super();
	}

	public Users(Integer uid, String uname, String upwd, Integer uage, Integer uheight, Integer uweight,
			String utimelit, Integer isplaned, String upicpath) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.uage = uage;
		this.uheight = uheight;
		this.uweight = uweight;
		this.utimelit = utimelit;
		this.isplaned = isplaned;
		this.upicpath = upicpath;
	}

	public Users(String uname, String upwd) {
		super();
		this.uname = uname;
		this.upwd = upwd;
	}

	public Users(Integer uid, Integer uheight, Integer uweight) {
		super();
		this.uid = uid;
		this.uheight = uheight;
		this.uweight = uweight;
	}

	public Users(Integer uid, String uname, Integer uage, Integer uheight, Integer uweight, String utimelit
			) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.uage = uage;
		this.uheight = uheight;
		this.uweight = uweight;
		this.utimelit = utimelit;
		
	}
	

}