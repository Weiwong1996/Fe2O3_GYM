package entity;
/**
 * 折扣
 * @author weiwong
 */
import java.io.Serializable;

public class Salespromotion implements Serializable {
    private Integer sid;

    private String scontent;

    private String sdiscount;

    private Integer sprice;

    private static final long serialVersionUID = 1L;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getScontent() {
        return scontent;
    }

    public void setScontent(String scontent) {
        this.scontent = scontent == null ? null : scontent.trim();
    }

    public String getSdiscount() {
        return sdiscount;
    }

    public void setSdiscount(String sdiscount) {
        this.sdiscount = sdiscount == null ? null : sdiscount.trim();
    }

    public Integer getSprice() {
        return sprice;
    }

    public void setSprice(Integer sprice) {
        this.sprice = sprice;
    }
}