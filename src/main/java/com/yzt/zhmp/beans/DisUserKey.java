package com.yzt.zhmp.beans;

import java.io.Serializable;

public class DisUserKey implements Serializable {
    private String discode;

    private Integer usrid;

    private static final long serialVersionUID = 1L;

    public String getDiscode() {
        return discode;
    }

    public void setDiscode(String discode) {
        this.discode = discode == null ? null : discode.trim();
    }

    public Integer getUsrid() {
        return usrid;
    }

    public void setUsrid(Integer usrid) {
        this.usrid = usrid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", discode=").append(discode);
        sb.append(", usrid=").append(usrid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}