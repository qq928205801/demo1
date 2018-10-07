package com.yzt.zhmp.beans;

public class Cdistrict {
    private String disCode;
    private String disType;
    private String name;
    private String introduction;
    private String traffic;
    private String travel;
    private String complaint;
    private String memo;
    private String upcode;


    public Cdistrict(String disCode, String disType, String name, String introduction, String traffic, String travel, String complaint, String memo, String upcode) {
        this.disCode = disCode;
        this.disType = disType;
        this.name = name;
        this.introduction = introduction;
        this.traffic = traffic;
        this.travel = travel;
        this.complaint = complaint;
        this.memo = memo;
        this.upcode = upcode;
    }

    public String getDisCode() {
        return disCode;
    }

    public void setDisCode(String disCode) {
        this.disCode = disCode;
    }

    public String getDisType() {
        return disType;
    }

    public void setDisType(String disType) {
        this.disType = disType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getTraffic() {
        return traffic;
    }

    public void setTraffic(String traffic) {
        this.traffic = traffic;
    }

    public String getTravel() {
        return travel;
    }

    public void setTravel(String travel) {
        this.travel = travel;
    }

    public String getComplaint() {
        return complaint;
    }

    public void setComplaint(String complaint) {
        this.complaint = complaint;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getUpcode() {
        return upcode;
    }

    public void setUpcode(String upcode) {
        this.upcode = upcode;
    }

    @Override
    public String toString() {
        return "Cdistrict{" +
                "disCode='" + disCode + '\'' +
                ", disType='" + disType + '\'' +
                ", name='" + name + '\'' +
                ", introduction='" + introduction + '\'' +
                ", traffic='" + traffic + '\'' +
                ", travel='" + travel + '\'' +
                ", complaint='" + complaint + '\'' +
                ", memo='" + memo + '\'' +
                ", upcode='" + upcode + '\'' +
                '}';
    }
}
