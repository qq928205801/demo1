package com.yzt.zhmp.resultVO;

import java.util.Date;

/**
 * 封装查询出的用户数据
 * @author wang
 */
public class UserVO {
    private Integer usrID;
    private String deptname;
    private String disPriviligeTime;
    private Integer priviUsrID;
    private Integer ifValid;
    private String disname;
    private String deptPriviligeTime;
    private String deptPriviUsrID;
    private String deptIfValid;

    public Integer getUsrID() {
        return usrID;
    }

    public void setUsrID(Integer usrID) {
        this.usrID = usrID;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    public String getDisPriviligeTime() {
        return disPriviligeTime;
    }

    public void setDisPriviligeTime(String disPriviligeTime) {
        this.disPriviligeTime = disPriviligeTime;
    }

    public Integer getPriviUsrID() {
        return priviUsrID;
    }

    public void setPriviUsrID(Integer priviUsrID) {
        this.priviUsrID = priviUsrID;
    }

    public Integer getIfValid() {
        return ifValid;
    }

    public void setIfValid(Integer ifValid) {
        this.ifValid = ifValid;
    }

    public String getDisname() {
        return disname;
    }

    public void setDisname(String disname) {
        this.disname = disname;
    }

    public String getDeptPriviligeTime() {
        return deptPriviligeTime;
    }

    public void setDeptPriviligeTime(String deptPriviligeTime) {
        this.deptPriviligeTime = deptPriviligeTime;
    }

    public String getDeptPriviUsrID() {
        return deptPriviUsrID;
    }

    public void setDeptPriviUsrID(String deptPriviUsrID) {
        this.deptPriviUsrID = deptPriviUsrID;
    }

    public String getDeptIfValid() {
        return deptIfValid;
    }

    public void setDeptIfValid(String deptIfValid) {
        this.deptIfValid = deptIfValid;
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "usrID=" + usrID +
                ", deptname='" + deptname + '\'' +
                ", disPriviligeTime=" + disPriviligeTime +
                ", priviUsrID=" + priviUsrID +
                ", ifValid=" + ifValid +
                ", disname='" + disname + '\'' +
                ", deptPriviligeTime='" + deptPriviligeTime + '\'' +
                ", deptPriviUsrID='" + deptPriviUsrID + '\'' +
                ", deptIfValid='" + deptIfValid + '\'' +
                '}';
    }
}
