package com.yzt.zhmp.beans;

import java.io.Serializable;

public class DisDeptKey implements Serializable {
    private String discode;

    private Integer deptid;

    private static final long serialVersionUID = 1L;

    public String getDiscode() {
        return discode;
    }

    public void setDiscode(String discode) {
        this.discode = discode == null ? null : discode.trim();
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", discode=").append(discode);
        sb.append(", deptid=").append(deptid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}