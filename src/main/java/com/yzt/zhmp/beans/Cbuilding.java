package com.yzt.zhmp.beans;

public class Cbuilding {
    private int buID;
    private String disCode;
    private String name;
    private String phoneNum;
    private String familyType;
    private int population;
    private int roomNum;
    private int floorNum;
    private float landArea;
    private float buildArea;
    private float yardArea;
    private int numberOfRoom;
    private int numberOfBed;
    private int mealDigits;
    private String feature;
    private String busiType;
    private String memo;
    private String ifOpen;
    private String buildingYear;
    private String address;

    public Cbuilding() {
    }

    public Cbuilding(int buID, String disCode, String name, String phoneNum, String familyType, int population, int roomNum, int floorNum, float landArea, float buildArea, float yardArea, int numberOfRoom, int numberOfBed, int mealDigits, String feature, String busiType, String memo, String ifOpen, String buildingYear, String address) {
        this.buID = buID;
        this.disCode = disCode;
        this.name = name;
        this.phoneNum = phoneNum;
        this.familyType = familyType;
        this.population = population;
        this.roomNum = roomNum;
        this.floorNum = floorNum;
        this.landArea = landArea;
        this.buildArea = buildArea;
        this.yardArea = yardArea;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
        this.mealDigits = mealDigits;
        this.feature = feature;
        this.busiType = busiType;
        this.memo = memo;
        this.ifOpen = ifOpen;
        this.buildingYear = buildingYear;
        this.address = address;
    }

    public int getNumberOfRoom() {
        return numberOfRoom;
    }

    public void setNumberOfRoom(int numberOfRoom) {
        this.numberOfRoom = numberOfRoom;
    }

    public int getNumberOfBed() {
        return numberOfBed;
    }

    public void setNumberOfBed(int numberOfBed) {
        this.numberOfBed = numberOfBed;
    }

    public int getMealDigits() {
        return mealDigits;
    }

    public void setMealDigits(int mealDigits) {
        this.mealDigits = mealDigits;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getBuID() {
        return buID;
    }

    public void setBuID(int buID) {
        this.buID = buID;
    }

    public String getDisCode() {
        return disCode;
    }

    public void setDisCode(String disCode) {
        this.disCode = disCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getFamilyType() {
        return familyType;
    }

    public void setFamilyType(String familyType) {
        this.familyType = familyType;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        this.population = population;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    public int getFloorNum() {
        return floorNum;
    }

    public void setFloorNum(int floorNum) {
        this.floorNum = floorNum;
    }

    public float getLandArea() {
        return landArea;
    }

    public void setLandArea(float landArea) {
        this.landArea = landArea;
    }

    public float getBuildArea() {
        return buildArea;
    }

    public void setBuildArea(float buildArea) {
        this.buildArea = buildArea;
    }

    public float getYardArea() {
        return yardArea;
    }

    public void setYardArea(float yardArea) {
        this.yardArea = yardArea;
    }

    public String getBusiType() {
        return busiType;
    }

    public void setBusiType(String busiType) {
        this.busiType = busiType;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getIfOpen() {
        return ifOpen;
    }

    public void setIfOpen(String ifOpen) {
        this.ifOpen = ifOpen;
    }

    public String getBuildingYear() {
        return buildingYear;
    }

    public void setBuildingYear(String buildingYear) {
        this.buildingYear = buildingYear;
    }

    @Override
    public String toString() {
        return "Cbuilding{" +
                "buID=" + buID +
                ", disCode='" + disCode + '\'' +
                ", name='" + name + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", familyType='" + familyType + '\'' +
                ", population=" + population +
                ", roomNum=" + roomNum +
                ", floorNum=" + floorNum +
                ", landArea=" + landArea +
                ", buildArea=" + buildArea +
                ", yardArea=" + yardArea +
                ", numberOfRoom=" + numberOfRoom +
                ", numberOfBed=" + numberOfBed +
                ", mealDigits=" + mealDigits +
                ", feature='" + feature + '\'' +
                ", busiType='" + busiType + '\'' +
                ", memo='" + memo + '\'' +
                ", ifOpen='" + ifOpen + '\'' +
                ", buildingYear='" + buildingYear + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
