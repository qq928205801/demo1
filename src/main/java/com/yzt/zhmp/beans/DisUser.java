package com.yzt.zhmp.beans;

import java.io.Serializable;
import java.util.Date;

public class DisUser extends DisUserKey implements Serializable {
    private String priviligetime;

    private Integer priviusrid;

    private String ifvalid;

    private String memo;

    private static final long serialVersionUID = 1L;

    public String getPriviligetime() {
        return priviligetime;
    }

    public void setPriviligetime(String priviligetime) {
        this.priviligetime = priviligetime;
    }

    public Integer getPriviusrid() {
        return priviusrid;
    }

    public void setPriviusrid(Integer priviusrid) {
        this.priviusrid = priviusrid;
    }

    public String getIfvalid() {
        return ifvalid;
    }

    public void setIfvalid(String ifvalid) {
        this.ifvalid = ifvalid == null ? null : ifvalid.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", priviligetime=").append(priviligetime);
        sb.append(", priviusrid=").append(priviusrid);
        sb.append(", ifvalid=").append(ifvalid);
        sb.append(", memo=").append(memo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}