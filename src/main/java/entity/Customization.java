package entity;
/**
 * 定制品类
 * @author weiwong
 */
import java.io.Serializable;

public class Customization implements Serializable {

	private Integer cusid;

    private String cuscontent;

    private Integer uid;

    public Customization() {
		super();
	}

	private Integer cid;

    private Integer cusprice;

    private static final long serialVersionUID = 1L;

    public Integer getCusid() {
        return cusid;
    }

    public void setCusid(Integer cusid) {
        this.cusid = cusid;
    }

    public String getCuscontent() {
        return cuscontent;
    }

    public void setCuscontent(String cuscontent) {
        this.cuscontent = cuscontent == null ? null : cuscontent.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getCusprice() {
        return cusprice;
    }

    public void setCusprice(Integer cusprice) {
        this.cusprice = cusprice;
    }

	public Customization(String cuscontent, Integer uid, Integer cid, Integer cusprice) {
		super();
		this.cuscontent = cuscontent;
		this.uid = uid;
		this.cid = cid;
		this.cusprice = cusprice;
	}

	@Override
	public String toString() {
		return "Customization [cusid=" + cusid + ", cuscontent=" + cuscontent + ", uid=" + uid + ", cid=" + cid
				+ ", cusprice=" + cusprice + "]";
	}
}