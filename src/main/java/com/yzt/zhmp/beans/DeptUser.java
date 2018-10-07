package com.yzt.zhmp.beans;

import java.io.Serializable;
import java.util.Date;

public class DeptUser implements Serializable {
    private Integer dptusrid;

    private Integer usrid;

    private String deptname;

    private String discode;

    private Integer deptid;

    private String priviligetime;

    private Integer priviusrid;

    private String ifvalid;

    private String memo;

    private static final long serialVersionUID = 1L;

    public Integer getDptusrid() {
        return dptusrid;
    }

    public void setDptusrid(Integer dptusrid) {
        this.dptusrid = dptusrid;
    }

    public Integer getUsrid() {
        return usrid;
    }

    public void setUsrid(Integer usrid) {
        this.usrid = usrid;
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

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

    public String getDiscode() {
        return discode;
    }

    public void setDiscode(String discode) {
        this.discode = discode;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Override
    public String toString() {
        return "DeptUser{" +
                "dptusrid=" + dptusrid +
                ", usrid=" + usrid +
                ", discode='" + discode + '\'' +
                ", deptid=" + deptid +
                ", priviligetime=" + priviligetime +
                ", priviusrid=" + priviusrid +
                ", ifvalid='" + ifvalid + '\'' +
                ", memo='" + memo + '\'' +
                '}';
    }
}