package com.yzt.zhmp.beans;

import java.io.Serializable;

public class Department implements Serializable {
    private Integer deptid;

    private String name;

    private Integer updeptid;

    private String memo;

    private static final long serialVersionUID = 1L;

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getUpdeptid() {
        return updeptid;
    }

    public void setUpdeptid(Integer updeptid) {
        this.updeptid = updeptid;
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
        sb.append(", deptid=").append(deptid);
        sb.append(", name=").append(name);
        sb.append(", updeptid=").append(updeptid);
        sb.append(", memo=").append(memo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}