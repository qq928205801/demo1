package com.yzt.zhmp.beans;

public class UserDepartment {
    private int userid;
    private String county_name;
    private String user_name;
    private String user_password;
    private String police;
    private String MinZheng;
    private String tourism;

    public UserDepartment(){}
    public UserDepartment(int userid, String county_name, String user_name, String user_password, String police, String minZheng, String tourism) {
        this.userid = userid;
        this.county_name = county_name;
        this.user_name = user_name;
        this.user_password = user_password;
        this.police = police;
        MinZheng = minZheng;
        this.tourism = tourism;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getCounty_name() {
        return county_name;
    }

    public void setCounty_name(String county_name) {
        this.county_name = county_name;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getPolice() {
        return police;
    }

    public void setPolice(String police) {
        this.police = police;
    }

    public String getMinZheng() {
        return MinZheng;
    }

    public void setMinZheng(String minZheng) {
        MinZheng = minZheng;
    }

    public String getTourism() {
        return tourism;
    }

    public void setTourism(String tourism) {
        this.tourism = tourism;
    }

    @Override
    public String toString() {
        return "UserDepartment{" +
                "userid=" + userid +
                ", county_name='" + county_name + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_password='" + user_password + '\'' +
                ", police='" + police + '\'' +
                ", MinZheng='" + MinZheng + '\'' +
                ", tourism='" + tourism + '\'' +
                '}';
    }
}
