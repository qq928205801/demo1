package com.yzt.zhmp.beans;

public class DisUserAddDisName {
    private String  name;
    private int usrID;
    private int  priviUsrID;
    private String ifValid;
    private String memo;
    private String priviligeTime;


    public DisUserAddDisName(){}
    public DisUserAddDisName(String name, int usrID, int priviUsrID, String ifValid, String memo, String priviligeTime) {
        this.name = name;
        this.usrID = usrID;
        this.priviUsrID = priviUsrID;
        this.ifValid = ifValid;
        this.memo = memo;
        this.priviligeTime = priviligeTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getUsrID() {
        return usrID;
    }

    public void setUsrID(int usrID) {
        this.usrID = usrID;
    }

    public int getPriviUsrID() {
        return priviUsrID;
    }

    public void setPriviUsrID(int priviUsrID) {
        this.priviUsrID = priviUsrID;
    }

    public String getIfValid() {
        return ifValid;
    }

    public void setIfValid(String ifValid) {
        this.ifValid = ifValid;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getPriviligeTime() {
        return priviligeTime;
    }

    public void setPriviligeTime(String priviligeTime) {
        this.priviligeTime = priviligeTime;
    }

    @Override
    public String toString() {
        return "DisUserAddDisName{" +
                "name='" + name + '\'' +
                ", usrID=" + usrID +
                ", priviUsrID=" + priviUsrID +
                ", ifValid='" + ifValid + '\'' +
                ", memo='" + memo + '\'' +
                ", priviligeTime='" + priviligeTime + '\'' +
                '}';
    }
}
