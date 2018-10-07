package com.yzt.zhmp.beans;

import java.io.Serializable;

public class System implements Serializable {
    private int sysid;

    private int deptid;

    private String name;

    private String url;

    private String icon;

    private String showname;

    private String ifvalid;

    private static final long serialVersionUID = 1L;

    public System(){}

    public System(int sysid, int deptid, String name, String url, String icon, String showname, String ifvalid) {
        this.sysid = sysid;
        this.deptid = deptid;
        this.name = name;
        this.url = url;
        this.icon = icon;
        this.showname = showname;
        this.ifvalid = ifvalid;
    }
    public System( int deptid, String name, String url, String icon, String showname, String ifvalid) {
        this.sysid = sysid;
        this.deptid = deptid;
        this.name = name;
        this.url = url;
        this.icon = icon;
        this.showname = showname;
        this.ifvalid = ifvalid;
    }

    public int getSysid() {
        return sysid;
    }

    public void setSysid(int sysid) {
        this.sysid = sysid;
    }

    public int getDeptid() {
        return deptid;
    }

    public void setDeptid(int deptid) {
        this.deptid = deptid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public String getShowname() {
        return showname;
    }

    public void setShowname(String showname) {
        this.showname = showname == null ? null : showname.trim();
    }

    public String getIfvalid() {
        return ifvalid;
    }

    public void setIfvalid(String ifvalid) {
        this.ifvalid = ifvalid == null ? null : ifvalid.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", sysid=").append(sysid);
        sb.append(", deptid=").append(deptid);
        sb.append(", name=").append(name);
        sb.append(", url=").append(url);
        sb.append(", icon=").append(icon);
        sb.append(", showname=").append(showname);
        sb.append(", ifvalid=").append(ifvalid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}