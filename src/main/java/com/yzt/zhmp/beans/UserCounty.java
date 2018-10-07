package com.yzt.zhmp.beans;

import java.util.Date;
import java.util.Objects;

public class UserCounty {
    private String usrID;
    private String name;
    private String password;
    private String countyCode;
    private String countyMark;
    private String dept;
    private Date createTime;

    public String getUsrID() {
        return usrID;
    }

    public void setUsrID(String usrID) {
        this.usrID = usrID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCountyCode() {
        return countyCode;
    }

    public void setCountyCode(String countyCode) {
        this.countyCode = countyCode;
    }

    public String getCountyMark() {
        return countyMark;
    }

    public void setCountyMark(String countyMark) {
        this.countyMark = countyMark;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    @Override
    public String toString() {
        return "UserCounty{" +
                "usrID='" + usrID + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", countyCode='" + countyCode + '\'' +
                ", countyMark='" + countyMark + '\'' +
                ", dept='" + dept + '\'' +
                ", createTime=" + createTime +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserCounty that = (UserCounty) o;
        return Objects.equals(usrID, that.usrID) &&
                Objects.equals(name, that.name) &&
                Objects.equals(password, that.password) &&
                Objects.equals(countyCode, that.countyCode) &&
                Objects.equals(countyMark, that.countyMark) &&
                Objects.equals(dept, that.dept) &&
                Objects.equals(createTime, that.createTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(usrID, name, password, countyCode, countyMark, dept, createTime);
    }
}
